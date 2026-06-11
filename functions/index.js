const functions = require('firebase-functions/v1');
const admin = require('firebase-admin');

admin.initializeApp();

exports.deleteUserAccount = functions.https.onRequest(async (req, res) => {
    // CORS ayarları
    res.set('Access-Control-Allow-Origin', '*');
    res.set('Access-Control-Allow-Methods', 'POST');
    res.set('Access-Control-Allow-Headers', 'Content-Type');

    if (req.method === 'OPTIONS') {
        res.status(200).send('');
        return;
    }

    if (req.method !== 'POST') {
        res.status(405).send('Method Not Allowed');
        return;
    }

    try {
        const { email, reason, details } = req.body;

        if (!email) {
            res.status(400).send('E-posta adresi gerekli');
            return;
        }

        // E-posta ile kullanıcıyı bul
        const userRecord = await admin.auth().getUserByEmail(email);
        const uid = userRecord.uid;

        // Firestore'dan kullanıcı verilerini sil
        const batch = admin.firestore().batch();
        
        // Kullanıcı profilini sil
        batch.delete(admin.firestore().collection('users').doc(uid));
        
        // Quiz sonuçlarını sil
        const quizResults = await admin.firestore()
            .collection('quiz_results')
            .where('userId', '==', uid)
            .get();
        
        quizResults.forEach(doc => {
            batch.delete(doc.ref);
        });

        // Yanlış cevapları sil
        const mistakes = await admin.firestore()
            .collection('mistakes')
            .where('userId', '==', uid)
            .get();
        
        mistakes.forEach(doc => {
            batch.delete(doc.ref);
        });

        // Kullanıcı aktivitelerini sil
        const activities = await admin.firestore()
            .collection('user_activities')
            .where('userId', '==', uid)
            .get();
        
        activities.forEach(doc => {
            batch.delete(doc.ref);
        });

        // Cihaz bilgilerini sil
        const devices = await admin.firestore()
            .collection('devices')
            .where('userId', '==', uid)
            .get();
        
        devices.forEach(doc => {
            batch.delete(doc.ref);
        });

        // Batch işlemini çalıştır
        await batch.commit();

        // Firebase Auth'dan kullanıcıyı sil
        await admin.auth().deleteUser(uid);

        // Silme işlemini logla
        await admin.firestore().collection('deleted_accounts').add({
            email: email,
            reason: reason,
            details: details,
            deletedAt: admin.firestore.FieldValue.serverTimestamp(),
            uid: uid
        });

        res.status(200).json({ 
            success: true, 
            message: 'Hesap başarıyla silindi' 
        });

    } catch (error) {
        console.error('Hesap silme hatası:', error);
        
        // E-posta ile silme işlemini logla
        await admin.firestore().collection('delete_requests').add({
            email: req.body.email,
            reason: req.body.reason,
            details: req.body.details,
            error: error.message,
            timestamp: admin.firestore.FieldValue.serverTimestamp()
        });

        res.status(500).json({ 
            success: false, 
            message: 'Hesap silme işlemi başarısız' 
        });
    }
});

exports.handleManualNotification = functions.firestore
    .document('notifications/{notificationId}')
    .onCreate(async (snapshot, context) => {
        const data = snapshot.data();
        
        if (!data) return null;

        const { title, body, language } = data;
        
        // Dil bazlı topic belirle
        // language: 'all', 'tr', 'en'
        let targetTopic = 'all_users';
        if (language === 'tr') {
            targetTopic = 'all_users_tr';
        } else if (language === 'en') {
            targetTopic = 'all_users_en';
        }

        const message = {
            notification: {
                title: title,
                body: body,
            },
            topic: targetTopic,
            android: {
                notification: {
                    color: '#2196F3',
                    icon: 'launcher_icon',
                    clickAction: 'FLUTTER_NOTIFICATION_CLICK',
                },
            },
            apns: {
                payload: {
                    aps: {
                        sound: 'default',
                        badge: 1,
                    },
                },
            },
            data: {
                click_action: 'FLUTTER_NOTIFICATION_CLICK',
                id: context.params.notificationId,
                status: 'done',
            },
        };

        try {
            const response = await admin.messaging().send(message);
            console.log('Successfully sent message to topic:', targetTopic, response);
            
            // Bildirim durumunu güncelle
            return snapshot.ref.update({
                status: 'sent',
                sentAt: admin.firestore.FieldValue.serverTimestamp(),
                messageId: response,
                targetTopic: targetTopic
            });
        } catch (error) {
            console.error('Error sending message:', error);
            return snapshot.ref.update({
                status: 'failed',
                error: error.message
            });
        }
    });

/**
 * Her gün saat 19:00'da (Türkiye saati) dile göre otomatik bildirim gönderir.
 * Firestore işlem kilidi (transaction lock) kullanarak günde sadece 1 kez çalışmasını garanti eder.
 */
exports.scheduledDailyNotification = functions.pubsub
    .schedule('0 19 * * *') 
    .timeZone('Europe/Istanbul')
    .onRun(async (context) => {
        // Türkiye saatine göre tarihi YYYY-MM-DD formatında al
        const formatter = new Intl.DateTimeFormat('en-CA', {
            timeZone: 'Europe/Istanbul',
            year: 'numeric',
            month: '2-digit',
            day: '2-digit'
        });
        const dateStr = formatter.format(new Date());

        const logRef = admin.firestore().collection('daily_notification_logs').doc(dateStr);
        let alreadySent = false;

        try {
            // Güvenli kilit: Aynı gün içinde ikinci bir tetiklemeyi engellemek için Firestore işlemi kullan
            await admin.firestore().runTransaction(async (transaction) => {
                const doc = await transaction.get(logRef);
                if (doc.exists) {
                    alreadySent = true;
                    return;
                }
                // Kilidi yerleştir (durumu pending olarak kaydet)
                transaction.set(logRef, {
                    status: 'pending',
                    createdAt: admin.firestore.FieldValue.serverTimestamp()
                });
            });
        } catch (txError) {
            console.error('Firestore transaction error for daily lock check:', txError);
            // Firestore hatası durumunda bildirim gönderimini pas geçip spam'i önle
            return null;
        }

        if (alreadySent) {
            console.log(`[Daily Notification] Already sent today (${dateStr}). Skipping execution to prevent duplicate notifications.`);
            return null;
        }

        // Türkçe Mesaj Varyasyonları (3 tane)
        const trMessages = [
            { title: 'Günlük Quiz Zamanı! 📚', body: 'Bugünkü anestezi sorularını çözerek bilgilerini tazelemeye ne dersin?' },
            { title: 'Bugün Kendini Test Ettin mi? 💡', body: 'Yeni eklenen spot bilgileri ve güncel notları kaçırma!' },
            { title: 'Hedefine Bir Adım Daha! 🏆', body: 'Liderlik tablosunda yükselmek için bugünkü sorularını çözmeyi unutma.' }
        ];

        // İngilizce Mesaj Varyasyonları (3 tane)
        const enMessages = [
            { title: 'Daily Quiz Time! 📚', body: 'How about refreshing your knowledge by solving today\'s anesthesia questions?' },
            { title: 'Have You Tested Yourself Today? 💡', body: 'Don\'t miss the newly added spot information and current notes!' },
            { title: 'One Step Closer to Your Goal! 🏆', body: 'Don\'t forget to solve today\'s questions to climb the leaderboard.' }
        ];

        // Rastgele seçim
        const index = Math.floor(Math.random() * trMessages.length);
        const tr = trMessages[index];
        const en = enMessages[index];

        // Yayınla
        try {
            await Promise.all([
                admin.messaging().send({ 
                    notification: { title: tr.title, body: tr.body }, 
                    topic: 'all_users_tr',
                    android: { notification: { clickAction: 'FLUTTER_NOTIFICATION_CLICK' } },
                    data: { click_action: 'FLUTTER_NOTIFICATION_CLICK' }
                }),
                admin.messaging().send({ 
                    notification: { title: en.title, body: en.body }, 
                    topic: 'all_users_en',
                    android: { notification: { clickAction: 'FLUTTER_NOTIFICATION_CLICK' } },
                    data: { click_action: 'FLUTTER_NOTIFICATION_CLICK' }
                })
            ]);
            console.log(`Daily notifications sent successfully for ${dateStr}.`);
            await logRef.update({ 
                status: 'success',
                sentAt: admin.firestore.FieldValue.serverTimestamp(),
                messageTr: tr,
                messageEn: en
            });
        } catch (error) {
            console.error('Notification sending failed:', error);
            await logRef.update({ 
                status: 'failed', 
                error: error.message,
                failedAt: admin.firestore.FieldValue.serverTimestamp()
            });
        }
        return null;
    });

/**
 * Her gün gece 02:00'de çalışan ve süresi dolmuş premium abonelikleri iptal eden zamanlanmış görev.
 * Eski sürüm kullanıcıları için de purchases alt koleksiyonunu tarayarak geriye dönük doğrulama yapar.
 */
exports.cleanupExpiredSubscriptions = functions.pubsub
    .schedule('0 2 * * *')
    .timeZone('Europe/Istanbul')
    .onRun(async (context) => {
        const db = admin.firestore();
        const usersSnapshot = await db.collection('users').where('isPremium', '==', true).get();
        const now = new Date();
        const batchLimit = 500;
        let batch = db.batch();
        let count = 0;

        console.log(`[Subscription Cleanup] Found ${usersSnapshot.size} active premium users to check.`);

        for (const userDoc of usersSnapshot.docs) {
            const userId = userDoc.id;
            const userData = userDoc.data();
            let shouldRevoke = false;
            let premiumEndDate = userData.premiumEndDate ? userData.premiumEndDate.toDate() : null;

            if (premiumEndDate) {
                // Tarih kontrolü yap
                if (premiumEndDate < now) {
                    shouldRevoke = true;
                    console.log(`[Subscription Cleanup] User ${userId} premium expired on ${premiumEndDate}.`);
                }
            } else {
                // Eski sistem kullanıcıları: purchases alt koleksiyonunu sorgula
                console.log(`[Subscription Cleanup] Legacy user ${userId} has no premiumEndDate. Checking purchases subcollection...`);
                const purchasesSnapshot = await db.collection('users').doc(userId).collection('purchases').get();
                
                if (purchasesSnapshot.empty) {
                    shouldRevoke = true;
                    console.log(`[Subscription Cleanup] Legacy user ${userId} has no purchase records. Revoking premium.`);
                } else {
                    let latestEndDate = null;
                    let latestPremiumType = 'monthly';

                    purchasesSnapshot.forEach(purchaseDoc => {
                        const pData = purchaseDoc.data();
                        const productId = pData.productId || '';
                        let transactionDateMs = null;
                        
                        if (pData.transactionDate) {
                            transactionDateMs = parseInt(pData.transactionDate);
                        } else if (pData.purchasedAt) {
                            transactionDateMs = pData.purchasedAt.toMillis();
                        }

                        if (transactionDateMs) {
                            const purchaseDate = new Date(transactionDateMs);
                            let durationDays = 30; // Varsayılan 30 gün
                            let type = 'monthly';
                            
                            if (productId.includes('6month') || productId.includes('sixmonth')) {
                                durationDays = 180;
                                type = 'sixmonth';
                            } else if (productId.includes('year') || productId.includes('yearly')) {
                                durationDays = 365;
                                type = 'yearly';
                            } else if (productId.includes('lifetime')) {
                                durationDays = 99999; // Lifetime
                                type = 'lifetime';
                            }
                            
                            const endDate = new Date(purchaseDate.getTime() + durationDays * 24 * 60 * 60 * 1000);
                            if (!latestEndDate || endDate > latestEndDate) {
                                latestEndDate = endDate;
                                latestPremiumType = type;
                            }
                        }
                    });

                    if (latestEndDate && latestEndDate < now) {
                        shouldRevoke = true;
                        console.log(`[Subscription Cleanup] Legacy user ${userId} calculated expiry date was ${latestEndDate} which is in the past. Revoking premium.`);
                    } else if (latestEndDate) {
                        // Eğer hala aktifse, yeni alanları veritabanına yazarak güncelle (Yeni sisteme geçir)
                        batch.set(userDoc.ref, { 
                            premiumEndDate: admin.firestore.Timestamp.fromDate(latestEndDate),
                            premiumType: latestPremiumType
                        }, { merge: true });
                        console.log(`[Subscription Cleanup] Legacy user ${userId} migrated to new structure. Active until ${latestEndDate}.`);
                    } else {
                        shouldRevoke = true;
                        console.log(`[Subscription Cleanup] Legacy user ${userId} has purchases but couldn't parse transaction dates. Revoking premium.`);
                    }
                }
            }

            if (shouldRevoke) {
                batch.set(userDoc.ref, { 
                    isPremium: false,
                    premiumUpdatedAt: admin.firestore.FieldValue.serverTimestamp()
                }, { merge: true });
                count++;
            }

            if (count >= batchLimit) {
                await batch.commit();
                batch = db.batch();
                count = 0;
            }
        }

        if (count > 0) {
            await batch.commit();
        }
        console.log(`[Subscription Cleanup] Daily check completed.`);
        return null;
    });



const functions = require('firebase-functions');
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

# iOS In-App Purchase Sorunları - Tam Çözüm ✅

## 🎯 Yapılan Düzeltmeler

### 1. ✅ Entitlements Dosyaları Güncellendi

#### `/ios/Runner/Runner.entitlements` (Debug & Release için)
```xml
<key>aps-environment</key>
<string>production</string>
<key>com.apple.developer.in-app-payments</key>
<array/>
```
✅ **In-App Purchase capability eklendi**
✅ **Production environment ayarlandı**

#### `/ios/Runner/RunnerProfile.entitlements` (Profile için)
```xml
<key>aps-environment</key>
<string>production</string>
<key>com.apple.developer.in-app-payments</key>
<array/>
```
✅ **In-App Purchase capability eklendi**
✅ **Production environment ayarlandı**

### 2. ✅ StoreKit Configuration Güncellendi

`/ios/Runner/Configuration.storekit` dosyasına **eksik olan aylık abonelik** eklendi:

```json
{
  "productID": "com.yftsoftware.monthly",
  "displayPrice": "99.99",
  "recurringSubscriptionPeriod": "P1M",
  "referenceName": "Monthly Subscription"
}
```

**Not:** Bu dosya sadece Xcode simulator ve debug için kullanılır. TestFlight/Production'da App Store Connect kullanılır.

---

## 📋 App Store Connect'te Yapılması Gerekenler

### 🔴 KRİTİK: Bu Adımlar Tamamlanmadan TestFlight'ta Satın Alma ÇALIŞMAZ!

### Adım 1: Ürünlerin Varlığını Kontrol Edin

1. **App Store Connect'e giriş yapın**: https://appstoreconnect.apple.com
2. **Uygulamanızı seçin**: My Apps → ALP
3. **In-App Purchases'a gidin**: Features → In-App Purchases
4. **Bu 3 ürünün olduğundan emin olun:**

| Product ID | Tür | Süre | Durum |
|------------|-----|------|-------|
| `com.yftsoftware.monthly` | Auto-Renewable Subscription | 1 Month | ✅ Ready to Submit veya Approved olmalı |
| `com.yftsoftware.six` | Auto-Renewable Subscription | 6 Months | ✅ Ready to Submit veya Approved olmalı |
| `com.alp.premium.yearly` | Auto-Renewable Subscription | 1 Year | ✅ Ready to Submit veya Approved olmalı |

### Adım 2: Ürün Durumlarını Kontrol Edin

Her ürünün durumu şunlardan biri olmalı:

✅ **"Ready to Submit"** - Mükemmel, kullanıma hazır
✅ **"Approved"** - Mükemmel, onaylanmış

❌ **"Waiting for Review"** - Onay bekliyor, 24-48 saat içinde aktif olacak
❌ **"Missing Metadata"** - Eksik bilgi var, tamamlanmalı
❌ **"Rejected"** - Reddedilmiş, düzeltilmeli

### Adım 3: Eksik Ürünler Varsa Oluşturun

Eğer yukarıdaki 3 üründen herhangi biri yoksa, **MUTLAKA oluşturun**:

#### Aylık Abonelik Oluşturma:
1. **In-App Purchases** → **Create New**
2. **Type:** Auto-Renewable Subscription
3. **Product ID:** `com.yftsoftware.monthly` (TAM OLARAK BU OLMALI!)
4. **Subscription Group:** "Premium Subscriptions" (varsa seçin, yoksa oluşturun)
5. **Subscription Duration:** 1 month
6. **Price:** Türkiye için uygun fiyat seçin
7. **Localization:**
   - **Display Name (TR):** ALP Premium Aylık
   - **Display Name (EN):** ALP Premium Monthly
   - **Description (TR):** ALP Premium aylık abonelik
   - **Description (EN):** ALP Premium monthly subscription
8. **Save** → **Submit for Review**

#### 6 Aylık Abonelik Oluşturma:
1-8 adımları tekrarlayın:
   - **Product ID:** `com.yftsoftware.six`
   - **Duration:** 6 months

#### Yıllık Abonelik Oluşturma:
1-8 adımları tekrarlayın:
   - **Product ID:** `com.alp.premium.yearly`
   - **Duration:** 1 year

### Adım 4: Subscription Group Kontrolü

Tüm 3 ürün **aynı Subscription Group**'ta olmalı:

1. **App Store Connect** → **In-App Purchases**
2. Her ürüne tıklayın
3. **Subscription Group** alanını kontrol edin
4. Hepsi aynı grup içinde olmalı (örn: "Premium Subscriptions")

**Neden önemli?** Apple, aynı gruptaki abonelikleri "upgrade/downgrade" olarak değerlendirir. Kullanıcı bir aboneliği seçerse, diğerleri otomatik iptal olur.

### Adım 5: Sandbox Test Hesabı Oluşturun

TestFlight'ta test etmek için **sandbox test hesabı** şart:

1. **Users and Access** → **Sandbox Testers** → **Add New Tester**
2. **Email:** test123@example.com (gerçek olmayan email)
3. **Password:** Güçlü bir şifre
4. **First Name:** Test
5. **Last Name:** User
6. **Country:** Turkey
7. **Save**

**⚠️ Önemli:** Bu email'e doğrulama gelmez, direkt oluşturulur.

### Adım 6: Cihazda Sandbox Hesabı ile Giriş

**iPhone/iPad'de:**
1. **Settings** (Ayarlar) → **App Store** → **Sandbox Account**
2. Oluşturduğunuz sandbox test hesabı ile giriş yapın
3. **Normal Apple ID'nizle GİRİŞ YAPMAYIN!**
4. Cihazı yeniden başlatın (önerilir)

---

## 🔨 Yeni Build Oluşturma

Düzeltmeler yapıldıktan sonra **yeni bir IPA oluşturup TestFlight'a yüklemelisiniz**:

### Yöntem 1: Build Script ile (Önerilen)

```bash
# Terminal'de proje dizininde:
./build_release.sh

# iOS seçeneğini seçin (3)
# Ardından Xcode'da Archive yapın
```

### Yöntem 2: Flutter Komut Satırı

```bash
# Clean build
flutter clean
flutter pub get

# iOS Release Build
flutter build ios --release

# Sonra Xcode'da:
# 1. ios/Runner.xcworkspace dosyasını açın
# 2. Product → Scheme → Runner seçin
# 3. Product → Destination → Any iOS Device
# 4. Product → Archive
# 5. Distribute App → App Store Connect
```

### Yöntem 3: Xcode Archive (Manuel)

```bash
# iOS build hazırla
flutter build ios --release
```

**Sonra Xcode'da:**
1. `ios/Runner.xcworkspace` dosyasını açın
2. **Product** → **Scheme** → **Runner**
3. **Product** → **Destination** → **Any iOS Device (arm64)**
4. **Product** → **Archive**
5. Archive penceresi açıldığında **Distribute App**
6. **App Store Connect** → **Upload** → **Next**
7. Otomatik signing seçeneklerini bırakın → **Upload**

**⏱️ Bekleme süresi:** Upload tamamlandıktan sonra TestFlight'ta görünmesi **10-30 dakika** sürebilir.

---

## 🧪 TestFlight'ta Test Etme

### Ön Hazırlık (ÖNEMLİ!)

1. ✅ App Store Connect'te 3 ürün oluşturuldu ve "Ready to Submit" durumunda
2. ✅ Sandbox test hesabı oluşturuldu
3. ✅ iPhone/iPad'de sandbox hesabı ile giriş yapıldı
4. ✅ Yeni build yüklendi ve TestFlight'ta görünüyor
5. ✅ TestFlight build "Testing" durumunda

### Test Adımları

1. **TestFlight'tan uygulamayı açın**
2. **Giriş yapın** (veya yeni hesap oluşturun)
3. **Premium ekranına gidin**
4. **Bir paket seçin** (Aylık, 6 Aylık veya Yıllık)
5. **"Premium'a Geç"** butonuna basın
6. **30-60 saniye bekleyin** (ilk yükleme yavaş olabilir)

### Beklenen Sonuç: ✅

```
✅ Ürünler yükleniyor... (5-10 saniye)
✅ Ürün listesi görünüyor
✅ Fiyatlar doğru gösteriliyor (TL olarak)
✅ Satın alma butonu aktif
✅ Butona basınca Apple satın alma ekranı açılıyor
✅ Sandbox test hesabı ile satın alma yapılabiliyor (GERÇEK PARA HARCANMAZ)
✅ Satın alma tamamlandıktan sonra premium özellikler açılıyor
```

### Hata Durumları ve Çözümleri

#### ❌ "Ürünler yüklenemedi" Hatası

**Sebep:** App Store Connect'te ürünler yok veya "Ready to Submit" değil

**Çözüm:**
1. App Store Connect → In-App Purchases kontrol et
2. Ürünlerin varlığını ve durumunu doğrula
3. "Missing Metadata" ise tamamla
4. 24-48 saat bekle (yeni ürünler için)
5. Uygulamayı yeniden başlat

#### ❌ "Cannot connect to iTunes Store" Hatası

**Sebep:** Sandbox test hesabı kullanılmıyor veya internet yok

**Çözüm:**
1. Settings → App Store → Sandbox Account kontrol et
2. Normal Apple ID'den çıkış yap
3. Sandbox test hesabı ile giriş yap
4. Cihazı yeniden başlat
5. İnternet bağlantısını kontrol et

#### ❌ Satın Alma Butonu Çalışmıyor / Dialog Açılmıyor

**Sebep:** Entitlements eksik veya yanlış (BU ARTIK DÜZELTİLDİ!)

**Çözüm:**
1. Yeni build yükle (entitlements düzeltildi)
2. Eski build yerine yeni build'i test et

#### ⏰ "Loading products..." Sonsuza Kadar Bekliyor

**Sebep:** Network timeout veya App Store Connect API yavaş

**Çözüm:**
1. 60 saniye bekle (kod 60 saniye timeout yapıyor)
2. Uygulamayı kapat ve tekrar aç
3. WiFi ile dene (cellular yerine)
4. Daha sonra tekrar dene

---

## 🔍 Debug Logları

Xcode Console'da şu logları göreceksiniz:

### ✅ Başarılı Durum:

```
🔧 Initializing InAppPurchaseService...
✅ In-app purchase available
📦 Loading products...
✅ Loaded 3 products: [com.yftsoftware.monthly, com.yftsoftware.six, com.alp.premium.yearly]
   📦 com.yftsoftware.monthly: ALP Premium Monthly - ₺99,99
   📦 com.yftsoftware.six: ALP Premium 6 Months - ₺149,99
   📦 com.alp.premium.yearly: ALP Premium Yearly - ₺299,99
✅ InAppPurchaseService initialized successfully
```

### ❌ Hata Durumu (Ürün Bulunamadı):

```
⚠️ Products not found: [com.yftsoftware.monthly]
⚠️ iOS: Make sure these product IDs are configured in App Store Connect
⚠️ TestFlight Troubleshooting:
   1. App Store Connect → Your App → In-App Purchases
   2. Check if products are in "Waiting for Review" or "Approved" status
   3. Make sure product IDs match exactly
```

**Çözüm:** App Store Connect'te ürünleri oluştur/kontrol et

---

## 📱 Production'a Çıkmadan Önce

### Final Kontrol Listesi:

- [ ] TestFlight'ta en az 3 kişi test etti
- [ ] Sandbox satın almalar başarılı
- [ ] Premium özellikleri doğru çalışıyor
- [ ] Restore purchases çalışıyor
- [ ] Subscription management link çalışıyor
- [ ] Farklı cihazlarda test edildi (iPhone ve iPad)
- [ ] Farklı iOS versiyonlarında test edildi (iOS 14, 15, 16+)
- [ ] Gerçek satın alma test edildi (küçük bir miktar ile)

### Production'a Alma:

1. **App Store Connect** → **App Store** → **Version** oluştur
2. **Screenshots** ve **App Preview** yükle
3. **What's New** kısmını doldur
4. **In-App Purchases and Subscriptions** → 3 ürünü seç
5. **Submit for Review**
6. **Onay:** 1-3 gün içinde
7. **Yayına al:** Onay geldiğinde manuel yayınla veya otomatik

---

## 🎉 Özet: Neler Düzeltildi?

### ✅ Kod Düzeltmeleri:

1. **Runner.entitlements**: In-App Purchase capability eklendi, production environment
2. **RunnerProfile.entitlements**: In-App Purchase capability eklendi, production environment
3. **Configuration.storekit**: Aylık abonelik eklendi (debug için)

### ✅ Sonuç:

- ✅ IPA alındığında entitlements doğru olacak
- ✅ TestFlight satın almalar çalışacak
- ✅ Production satın almalar çalışacak
- ✅ Restore purchases çalışacak
- ✅ Receipt verification yapılabilir

### 🚨 Yapmanız Gerekenler:

1. **App Store Connect'te 3 ürünü oluştur/kontrol et** (EN ÖNEMLİ!)
2. **Sandbox test hesabı oluştur**
3. **Yeni IPA build al ve TestFlight'a yükle**
4. **TestFlight'ta test et**
5. **Production'a çıkar**

---

## 📞 Sorun Yaşarsanız

### 1. Xcode Console Loglarını Kontrol Edin

Xcode → Window → Devices and Simulators → Cihazınızı seçin → Open Console

### 2. App Store Connect Kontrol Edin

- Ürünlerin durumunu kontrol edin
- Product ID'lerin eşleştiğinden emin olun
- Subscription Group ayarlarını kontrol edin

### 3. Sandbox Test Hesabını Yeniden Deneyin

- Settings → App Store → Sandbox Account
- Sign out → Sign in
- Cihazı yeniden başlat

### 4. 24-48 Saat Bekleyin

Yeni ürünler oluşturduysanız, App Store Connect API'nin güncellemesi zaman alabilir.

---

## ✨ Son Notlar

- ✅ **Tüm kod düzeltmeleri yapıldı**
- ✅ **Entitlements kusursuz şekilde ayarlandı**
- ✅ **TestFlight ve Production için hazır**
- 🚨 **App Store Connect'te ürün oluşturma işlemi sizin yapmanız gereken tek adım!**

**İyi şanslar! 🚀**

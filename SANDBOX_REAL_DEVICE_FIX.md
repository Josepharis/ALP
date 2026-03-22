# Gerçek Cihazda Sandbox Çalışmıyor - Çözüm Rehberi

## ⚠️ ÖNEMLİ: StoreKit Dosyası Gerçek Cihazda Kullanılmaz!

**StoreKit Configuration dosyası (`Configuration.storekit`) sadece Xcode'da test için kullanılır!**

- ✅ **Xcode Simulator/Cihaz**: StoreKit dosyası kullanılır
- ❌ **Gerçek Cihaz (TestFlight/Production)**: App Store Connect'teki gerçek ürünler kullanılır

---

## 🔍 Sorun Tespiti

Gerçek cihazda sandbox çalışmıyorsa, şu kontrolleri yapın:

### 1. Sandbox Hesabı Kontrolü

**Settings → App Store → Sandbox Account** bölümünde:

1. ✅ Sandbox test hesabı ile giriş yapılmış mı?
2. ✅ Normal App Store hesabından çıkış yapılmış mı?
3. ✅ Sandbox hesabı aktif mi?

**Kontrol Adımları:**
```
Settings → App Store → Sandbox Account
- Sandbox hesabı görünüyor mu?
- "Sign Out" butonu var mı? (varsa giriş yapılmış demektir)
```

**Eğer sandbox hesabı yoksa:**
1. App Store Connect → Users and Access → Sandbox Testers
2. Yeni sandbox test hesabı oluşturun
3. Settings → App Store → Sandbox Account → Giriş yapın

---

### 2. App Store Connect Ürün Durumu

**App Store Connect → My Apps → ALP → In-App Purchases** bölümünde:

1. ✅ Ürünler "Ready to Submit" veya "Approved" durumunda mı?
2. ✅ Product ID'ler tam olarak eşleşiyor mu?
   - `com.yftsoftware.anestezi`
   - `com.alp.premium.6months`
   - `com.alp.premium.yearly`
3. ✅ Ürünler bir versiyona eklenmiş mi?

**Kontrol:**
- Ürün durumu: "Ready to Submit" ✅ veya "Approved" ✅
- Ürün durumu: "Waiting for Review" ⚠️ (bazen çalışmaz)
- Ürün durumu: "Missing Metadata" ❌ (çalışmaz)

---

### 3. Versiyon Yapılandırması

**App Store Connect → My Apps → ALP → App Store → Versions:**

1. ✅ Mevcut versiyon var mı?
2. ✅ In-App Purchases bölümünde 3 ürün seçili mi?
3. ✅ Versiyon "Ready to Submit" veya "Waiting for Review" durumunda mı?

**ÖNEMLİ:** "Ready to Submit" ürünler bazen TestFlight'ta çalışmaz!

**Çözüm:** Versiyonu Submit edip hemen iptal edin (aşağıdaki adımlar)

---

## ✅ ÇÖZÜM 1: Versiyonu Submit Edip İptal Edin

Bu işlem ürünlerin App Store Connect API'de aktif olmasını sağlar.

### Adım 1: Versiyon Oluşturun/Düzenleyin

1. **App Store Connect** → **My Apps** → **ALP**
2. **App Store** → **Versions**
3. Mevcut versiyonu düzenleyin veya yeni versiyon oluşturun

### Adım 2: In-App Purchases'ı Seçin

1. Versiyon sayfasında aşağı kaydırın
2. **In-App Purchases and Subscriptions** bölümünü bulun
3. **+** butonuna tıklayın
4. 3 ürünü seçin:
   - ✅ `com.yftsoftware.anestezi`
   - ✅ `com.alp.premium.6months`
   - ✅ `com.alp.premium.yearly`
5. **Done** butonuna tıklayın

### Adım 3: Submit Edip Hemen İptal Edin

1. Versiyon sayfasının en üstüne gidin
2. **Submit for Review** butonuna tıklayın
3. Gerekli bilgileri doldurun (Export Compliance, Content Rights, vb.)
4. **Submit** butonuna tıklayın
5. ⚠️ **HEMEN** (birkaç dakika içinde) **Remove from Review** butonuna tıklayın

**Bu işlem:**
- ✅ Ürünlerin API'de aktif olmasını sağlar
- ✅ TestFlight'ta test edebilmenizi sağlar
- ✅ Versiyonu iptal etseniz bile ürünler aktif kalır

### Adım 4: Test Edin

1. 5-10 dakika bekleyin (API güncellemesi için)
2. Gerçek cihazda uygulamayı açın
3. Premium ekranına gidin
4. Ürünlerin yüklendiğini kontrol edin
5. Sandbox hesabı ile satın alma deneyin

---

## ✅ ÇÖZÜM 2: Sandbox Hesabını Yenileyin

### Adım 1: Mevcut Sandbox Hesabından Çıkış

1. **Settings** → **App Store** → **Sandbox Account**
2. Mevcut sandbox hesabı ile çıkış yapın

### Adım 2: Yeni Sandbox Hesabı Oluşturun

1. **App Store Connect** → **Users and Access** → **Sandbox Testers**
2. **+** butonuna tıklayın
3. Yeni sandbox test hesabı oluşturun:
   - Email: `test+1@example.com` (gerçek email olmamalı)
   - Password: Güçlü bir şifre
   - Country/Region: Türkiye (veya test edeceğiniz ülke)

### Adım 3: Yeni Hesap ile Giriş

1. **Settings** → **App Store** → **Sandbox Account**
2. Yeni sandbox hesabı ile giriş yapın
3. Cihazı yeniden başlatın (önerilir)

---

## ✅ ÇÖZÜM 3: Cihaz ve Uygulama Temizliği

### Adım 1: Uygulamayı Silin

1. Gerçek cihazda uygulamayı silin
2. Cihazı yeniden başlatın

### Adım 2: Sandbox Hesabını Kontrol Edin

1. **Settings** → **App Store** → **Sandbox Account**
2. Sandbox hesabı ile giriş yapılmış mı kontrol edin
3. Normal App Store hesabından çıkış yapılmış mı kontrol edin

### Adım 3: Uygulamayı Yeniden Yükleyin

1. TestFlight'tan veya Xcode'dan uygulamayı yeniden yükleyin
2. Uygulamayı açın
3. Premium ekranına gidin
4. Ürünlerin yüklendiğini kontrol edin

---

## 🔍 Debug Kontrolleri

### 1. Console Loglarını Kontrol Edin

Xcode Console'da şu logları arayın:

```
✅ Loaded 3 products: [com.yftsoftware.anestezi, com.alp.premium.6months, com.alp.premium.yearly]
❌ Products not found: [com.yftsoftware.anestezi]
⚠️ No products loaded
```

**Eğer "Products not found" görüyorsanız:**
- App Store Connect'teki Product ID'leri kontrol edin
- Versiyonu submit edip iptal edin (Çözüm 1)

### 2. Sandbox Hesabı Kontrolü

Uygulama içinde şu kontrolü yapın:

```dart
// Debug için
print('Sandbox Account: ${await InAppPurchase.instance.isAvailable()}');
```

**Eğer `isAvailable()` false dönüyorsa:**
- Sandbox hesabı ile giriş yapılmamış olabilir
- Settings → App Store → Sandbox Account kontrol edin

---

## ⚠️ Yaygın Hatalar ve Çözümleri

### Hata 1: "Products not found"

**Neden:**
- App Store Connect'teki Product ID'ler kod ile eşleşmiyor
- Ürünler "Waiting for Review" durumunda ve API'de aktif değil

**Çözüm:**
1. Product ID'leri kontrol edin (tam eşleşme gerekli)
2. Versiyonu submit edip iptal edin (Çözüm 1)

---

### Hata 2: "Purchase dialog does not appear"

**Neden:**
- Sandbox hesabı ile giriş yapılmamış
- Normal App Store hesabı ile giriş yapılmış

**Çözüm:**
1. Settings → App Store → Sandbox Account
2. Sandbox hesabı ile giriş yapın
3. Normal App Store hesabından çıkış yapın
4. Cihazı yeniden başlatın

---

### Hata 3: "Transaction failed"

**Neden:**
- Pending transaction'lar var
- Sandbox hesabı sorunlu

**Çözüm:**
1. Uygulamayı silin ve yeniden yükleyin
2. Sandbox hesabını yenileyin (Çözüm 2)
3. Cihazı yeniden başlatın

---

## 📋 Kontrol Listesi

Gerçek cihazda sandbox test etmeden önce:

- [ ] StoreKit dosyası var (sadece Xcode için)
- [ ] App Store Connect'te 3 ürün var ve doğru Product ID'ler
- [ ] Ürünler "Ready to Submit" veya "Approved" durumunda
- [ ] Ürünler bir versiyona eklenmiş
- [ ] Versiyon submit edilip iptal edilmiş (API aktivasyonu için)
- [ ] Sandbox test hesabı oluşturulmuş
- [ ] Settings → App Store → Sandbox Account → Sandbox hesabı ile giriş yapılmış
- [ ] Normal App Store hesabından çıkış yapılmış
- [ ] Cihaz yeniden başlatılmış (önerilir)
- [ ] Uygulama gerçek cihazda yüklü
- [ ] Premium ekranında ürünler görünüyor
- [ ] Satın alma dialog'u açılıyor

---

## 🎯 Önerilen Test Sırası

1. ✅ **Xcode'da Test:** StoreKit dosyası ile test edin (çalışıyorsa StoreKit doğru)
2. ✅ **App Store Connect Kontrolü:** Ürünlerin durumunu kontrol edin
3. ✅ **Versiyon Submit/İptal:** Ürünlerin API'de aktif olmasını sağlayın
4. ✅ **Sandbox Hesabı:** Yeni sandbox hesabı oluşturup giriş yapın
5. ✅ **Gerçek Cihaz Test:** TestFlight veya Xcode'dan gerçek cihaza yükleyin
6. ✅ **Satın Alma Testi:** Sandbox hesabı ile satın alma deneyin

---

## 💡 Önemli Notlar

1. **StoreKit dosyası gerçek cihazda kullanılmaz** - Sadece Xcode'da test için
2. **Gerçek cihazda App Store Connect'teki ürünler kullanılır**
3. **"Ready to Submit" ürünler bazen TestFlight'ta çalışmaz** - Versiyonu submit edip iptal edin
4. **Sandbox hesabı mutlaka Settings'te aktif olmalı**
5. **Normal App Store hesabından çıkış yapılmalı**
6. **API güncellemesi 5-10 dakika sürebilir**

---

## 📞 Hala Çalışmıyorsa

1. Xcode Console loglarını kontrol edin
2. App Store Connect → Support → Contact Us
3. Apple Developer Support'a başvurun
4. Ürünlerin durumunu kontrol edin (Ready to Submit → Approved)

---

## 🔗 İlgili Dosyalar

- `ios/Runner/Configuration.storekit` - Xcode test için (gerçek cihazda kullanılmaz)
- `lib/services/in_app_purchase_service.dart` - In-app purchase servisi
- `SANDBOX_NOT_WORKING_FIX.md` - TestFlight sandbox sorunları

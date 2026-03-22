# TestFlight Ürün Yükleme Sorunu - Çözüm Rehberi

## 🔧 Yapılan Kod İyileştirmeleri

### 1. Timeout Süreleri Artırıldı
- **Ürün yükleme timeout**: 15 saniye → **60 saniye**
- **Ürün sorgulama timeout**: 30 saniye
- **Retry sayısı**: 3 → **5 deneme**
- **Retry delay**: 2 saniye → **3 saniye**

### 2. Daha İyi Hata Mesajları
- TestFlight için özel hata mesajları eklendi
- App Store Connect yapılandırma kontrolü eklendi
- Network timeout durumları için özel mesajlar

### 3. Retry Mekanizması İyileştirildi
- Her retry'da 3 saniye bekleme
- Toplam 5 deneme (yaklaşık 2 dakika)
- Timeout durumlarında otomatik retry

## 📋 TestFlight'ta Ürün Yüklenememe Sorunları ve Çözümleri

### Sorun 1: "Ürün yüklenemedi" Hatası

#### Olası Nedenler:
1. **App Store Connect'te ürünler henüz onaylanmamış**
2. **Sandbox test hesabı kullanılmıyor**
3. **Ürün ID'leri eşleşmiyor**
4. **Ürünler yeni oluşturulmuş (24-48 saat bekleme gerekir)**

#### Çözüm Adımları:

### ✅ Adım 1: App Store Connect Kontrolü

1. **App Store Connect'e giriş yapın**
   - https://appstoreconnect.apple.com

2. **Uygulamanızı seçin**
   - My Apps → ALP (veya uygulama adınız)

3. **In-App Purchases bölümüne gidin**
   - Features → In-App Purchases

4. **Ürünleri kontrol edin:**
   - `com.alp.premium.monthly` ✅
   - `com.alp.premium.6months` ✅
   - `com.alp.premium.yearly` ✅

5. **Her ürünün durumunu kontrol edin:**
   - ✅ **"Ready to Submit"** veya **"Approved"** olmalı
   - ❌ **"Waiting for Review"** ise onay bekliyor
   - ❌ **"Rejected"** ise reddedilmiş, düzeltme gerekli

### ✅ Adım 2: Sandbox Test Hesabı Ayarlama

1. **App Store Connect'te Sandbox Tester oluşturun:**
   - Users and Access → Sandbox Testers → Add New Tester
   - Email: test@example.com (gerçek olmayan email)
   - Password: Güçlü bir şifre
   - Country: Türkiye (veya test yapacağınız ülke)

2. **Cihazda Sandbox hesabı ile giriş yapın:**
   - Settings → App Store → Sandbox Account
   - Sandbox test hesabınızla giriş yapın
   - **ÖNEMLİ**: Normal App Store hesabınızla değil, Sandbox hesabıyla giriş yapın!

3. **Uygulamayı kapatıp yeniden açın**

### ✅ Adım 3: Ürün ID Kontrolü

Kodda kullanılan Product ID'ler:
```dart
com.alp.premium.monthly
com.alp.premium.6months
com.alp.premium.yearly
```

App Store Connect'teki Product ID'lerin **tam olarak** bunlarla eşleştiğinden emin olun.

### ✅ Adım 4: Bekleme Süresi

- Yeni ürün oluşturduysanız: **24-48 saat** bekleyin
- Ürün güncellediyseniz: **Birkaç saat** bekleyin
- App Store Connect API'nin ürünleri yayınlaması zaman alabilir

### ✅ Adım 5: Test Adımları

1. **TestFlight'ta uygulamayı açın**
2. **Premium ekranına gidin**
3. **Bir paket seçin (Aylık, 6 Aylık, Yıllık)**
4. **"Premium'a Geç" butonuna basın**
5. **Bekleyin** (ilk yükleme 30-60 saniye sürebilir)

## 🐛 Debug Logları

Uygulama çalışırken Xcode console'da şu logları göreceksiniz:

### Başarılı Yükleme:
```
✅ Loaded 3 products: [com.alp.premium.6months, com.alp.premium.monthly, com.alp.premium.yearly]
```

### Hata Durumları:

#### Ürün Bulunamadı:
```
⚠️ Products not found: [com.alp.premium.monthly]
⚠️ iOS: Make sure these product IDs are configured in App Store Connect
```

#### Timeout:
```
⏰ queryProductDetails timeout
⏰ Timeout occurred - App Store Connect API may be slow
```

## 🔍 Kontrol Listesi

TestFlight'ta test etmeden önce:

- [ ] App Store Connect'te 3 ürün oluşturuldu
- [ ] Ürün ID'leri kodla eşleşiyor
- [ ] Ürünler "Ready to Submit" veya "Approved" durumunda
- [ ] Sandbox test hesabı oluşturuldu
- [ ] Cihazda Sandbox hesabı ile giriş yapıldı
- [ ] 24-48 saat beklendi (yeni ürünler için)
- [ ] İnternet bağlantısı aktif (WiFi veya Cellular)
- [ ] Uygulama yeniden başlatıldı

## 📱 TestFlight'ta Test Etme

1. **Sandbox hesabı ile giriş yapın** (Settings → App Store → Sandbox Account)
2. **Uygulamayı açın**
3. **Premium ekranına gidin**
4. **Bir paket seçin ve "Premium'a Geç" butonuna basın**
5. **30-60 saniye bekleyin** (ilk yükleme yavaş olabilir)
6. **Ürünler yüklenirse**: Satın alma ekranı açılacak
7. **Ürünler yüklenmezse**: Hata mesajı göreceksiniz

## ⚠️ Önemli Notlar

1. **Sandbox Test Hesabı Zorunlu**: TestFlight'ta test ederken mutlaka Sandbox test hesabı kullanın
2. **Gerçek Para Harcanmaz**: Sandbox'ta test satın almalar gerçek para harcamaz
3. **Bekleme Süresi**: Yeni ürünler App Store Connect'te 24-48 saat içinde aktif olur
4. **Network**: İlk yükleme yavaş olabilir, sabırlı olun
5. **Retry**: Kod otomatik olarak 5 kez deneyecek (yaklaşık 2 dakika)

## 🆘 Hala Çalışmıyorsa

1. **App Store Connect'te ürün durumunu kontrol edin**
2. **Sandbox hesabınızın aktif olduğundan emin olun**
3. **Cihazı yeniden başlatın**
4. **Uygulamayı silip yeniden yükleyin**
5. **Farklı bir Sandbox test hesabı deneyin**
6. **48 saat bekleyip tekrar deneyin** (yeni ürünler için)

## 📞 Destek

Sorun devam ederse:
- App Store Connect → App Information → Support URL
- Xcode Console loglarını kontrol edin
- TestFlight feedback gönderin






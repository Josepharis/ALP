# App Store Connect In-App Purchase Kurulum Rehberi

## ⚠️ ÖNEMLİ: Product ID'ler Güncellendi!

Bundle ID ile uyumlu olması için Product ID'ler değiştirildi:

### Eski Product ID'ler (YANLIŞ):
- ❌ `com.alp.premium.monthly`
- ❌ `com.alp.premium.6months`
- ❌ `com.alp.premium.yearly`

### Yeni Product ID'ler (DOĞRU):
- ✅ `com.yftsoftware.anestezi.premium.monthly`
- ✅ `com.yftsoftware.anestezi.premium.6months`
- ✅ `com.yftsoftware.anestezi.premium.yearly`

Bundle ID: `com.yftsoftware.anestezi`

---

## App Store Connect'te In-App Purchase Oluşturma

### Adım 1: App Store Connect'e giriş yapın
1. https://appstoreconnect.apple.com adresine gidin
2. Apple Developer hesabınızla giriş yapın

### Adım 2: Uygulamanızı seçin
1. **My Apps** bölümüne gidin
2. **ALP** uygulamasını seçin

### Adım 3: In-App Purchases bölümüne gidin
1. Sol menüden **Features** altında **In-App Purchases** seçin
2. Sağ üstteki **+** (Plus) butonuna tıklayın

---

## Her Ürün için Yapılacaklar

### 1. Aylık Abonelik Oluşturma

#### Adım 1: Subscription seçin
- **Auto-Renewable Subscription** seçin
- **Create** butonuna tıklayın

#### Adım 2: Subscription Group oluşturun (ilk seferinde)
- **Create a Subscription Group** butonuna tıklayın
- **Reference Name**: `Premium Subscriptions`
- **Create** butonuna tıklayın

#### Adım 3: Aylık Subscription bilgilerini girin
- **Reference Name**: `Premium Monthly Subscription`
- **Product ID**: `com.yftsoftware.anestezi.premium.monthly` ⚠️ TAM OLARAK BU!
- **Create** butonuna tıklayın

#### Adım 4: Subscription Information
- **Subscription Duration**: `1 Month`
- **Subscription Prices**: `$9.99` (veya istediğiniz fiyat)
  - **Add Pricing** butonuna tıklayın
  - Ülke seçin ve fiyat girin
  - **Next** → **Confirm**

#### Adım 5: Subscription Localizations
- **Add Localization** butonuna tıklayın
- **Language**: `English (U.S.)`
- **Display Name**: `Premium Monthly`
- **Description**: `Access all premium features for one month`
- **Save** butonuna tıklayın

#### Adım 6: Review Information
- **Screenshot for Review**: Uygulamanızın bir ekran görüntüsünü yükleyin
- **Notes for Review**: `Premium subscription for the app`

#### Adım 7: Submit for Review
- **Submit** butonuna tıklayın
- Durumu: **Waiting for Review** → **Ready to Submit**

---

### 2. 6 Aylık Abonelik Oluşturma

Aynı Subscription Group içinde:

- **Reference Name**: `Premium 6 Months Subscription`
- **Product ID**: `com.yftsoftware.anestezi.premium.6months` ⚠️ TAM OLARAK BU!
- **Subscription Duration**: `6 Months`
- **Subscription Prices**: `$49.99` (veya istediğiniz fiyat)
- **Display Name**: `Premium 6 Months`
- **Description**: `Access all premium features for six months`

---

### 3. Yıllık Abonelik Oluşturma

Aynı Subscription Group içinde:

- **Reference Name**: `Premium Yearly Subscription`
- **Product ID**: `com.yftsoftware.anestezi.premium.yearly` ⚠️ TAM OLARAK BU!
- **Subscription Duration**: `1 Year`
- **Subscription Prices**: `$89.99` (veya istediğiniz fiyat)
- **Display Name**: `Premium Yearly`
- **Description**: `Access all premium features for one year`

---

## Sandbox Test Hesabı Oluşturma

### Adım 1: Users and Access'e gidin
1. Sol menüden **Users and Access** seçin
2. **Sandbox** sekmesine tıklayın
3. **Testers** altında **+** (Plus) butonuna tıklayın

### Adım 2: Sandbox Tester bilgilerini girin
- **First Name**: Test
- **Last Name**: User
- **Email**: `test@example.com` (gerçek olmayan bir email)
  - ⚠️ Bu email gerçek bir email olmamalı
  - ⚠️ Daha önce App Store'da kullanılmamış olmalı
- **Password**: Güçlü bir şifre (en az 8 karakter, büyük-küçük harf, rakam)
- **Country or Region**: `Turkey` (veya test yapacağınız ülke)
- **Create** butonuna tıklayın

---

## Cihazda Test Etme

### Adım 1: Sandbox hesabı ile giriş yapın
1. **Settings** → **App Store** → **Sandbox Account**
2. Oluşturduğunuz Sandbox test hesabı ile giriş yapın
3. ⚠️ Normal App Store hesabınızla değil, Sandbox hesabı ile giriş yapın!

### Adım 2: Uygulamayı test edin
1. TestFlight'tan uygulamayı açın
2. Premium ekranına gidin
3. Bir paket seçin ve "Premium'a Geç" butonuna basın
4. 30-60 saniye bekleyin (ilk yükleme yavaş olabilir)

---

## Kontrol Listesi

App Store Connect'te:
- [ ] 3 ürün oluşturuldu (Monthly, 6 Months, Yearly)
- [ ] Product ID'ler TAMAMEN doğru:
  - [ ] `com.yftsoftware.anestezi.premium.monthly`
  - [ ] `com.yftsoftware.anestezi.premium.6months`
  - [ ] `com.yftsoftware.anestezi.premium.yearly`
- [ ] Her ürün "Ready to Submit" veya "Approved" durumunda
- [ ] Sandbox test hesabı oluşturuldu

Cihazda:
- [ ] Sandbox hesabı ile giriş yapıldı (Settings → App Store → Sandbox Account)
- [ ] TestFlight'tan son build yüklendi
- [ ] İnternet bağlantısı aktif

---

## Sorun Giderme

### Problem 1: "Ürün yüklenemedi" hatası
**Çözüm**:
1. Product ID'leri kontrol edin (TAM eşleşmeli)
2. Ürünlerin "Ready to Submit" durumunda olduğundan emin olun
3. 24-48 saat bekleyin (yeni ürünler için)
4. Cihazı yeniden başlatın
5. Uygulamayı silip yeniden yükleyin

### Problem 2: Sandbox hesabı çalışmıyor
**Çözüm**:
1. Settings → App Store → Sandbox Account bölümünde giriş yapın
2. Normal App Store hesabınızla ÇIKIŞ yapın
3. Sadece Sandbox hesabı aktif olmalı
4. Uygulamayı yeniden başlatın

### Problem 3: Product ID'ler eşleşmiyor
**Çözüm**:
1. App Store Connect'te Product ID'leri kontrol edin
2. TAM OLARAK şunlar olmalı:
   - `com.yftsoftware.anestezi.premium.monthly`
   - `com.yftsoftware.anestezi.premium.6months`
   - `com.yftsoftware.anestezi.premium.yearly`
3. Eğer farklıysa, App Store Connect'te düzeltin veya kodda değiştirin

---

## Önemli Notlar

1. **Bundle ID kontrolü**: Uygulamanızın Bundle ID'si `com.yftsoftware.anestezi` olmalı
2. **Product ID formatı**: Product ID'ler `{Bundle ID}.premium.{subscription type}` formatında olmalı
3. **Sandbox hesabı**: TestFlight'ta test ederken mutlaka Sandbox hesabı kullanın
4. **Bekleme süresi**: Yeni ürünler 24-48 saat içinde aktif olur
5. **Gerçek para**: Sandbox'ta yapılan satın almalar gerçek para harcamaz

---

## Debug

Uygulamada Product ID'leri görmek için:
1. Premium ekranına gidin
2. "Premium'a Geç" butonuna basın
3. Ürün yüklenemezse, hata mesajında Product ID'ler gösterilecek
4. Bu ID'leri App Store Connect'teki ile karşılaştırın

---

## Destek

Sorun devam ederse:
- Xcode Console loglarını kontrol edin
- `TESTFLIGHT_TROUBLESHOOTING.md` dosyasını okuyun
- App Store Connect → Support → Contact Us






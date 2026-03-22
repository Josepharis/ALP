# TestFlight'ta In-App Purchase Test Etme Rehberi

## ✅ İyi Haber: "Ready to Submit" Ürünler TestFlight'ta Test Edilebilir!

"Ready to Submit" durumundaki ürünler TestFlight'ta test edilebilir. Ancak bazı koşullar var:

---

## 🎯 TestFlight'ta Test Etme Yöntemleri

### Yöntem 1: Sandbox Test Hesabı ile Test (ÖNERİLEN)

Bu yöntem **HEMEN** çalışır, App Review'a göndermenize gerek yok!

#### Adım 1: Sandbox Test Hesabı Oluşturun
1. App Store Connect → Users and Access → Sandbox
2. **+** butonuna tıklayın
3. Test hesabı bilgilerini girin:
   - Email: `test@example.com` (gerçek olmayan)
   - Password: Güçlü şifre
   - Country: Turkey
4. **Create** butonuna tıklayın

#### Adım 2: Cihazda Sandbox Hesabı ile Giriş Yapın
1. **Settings** → **App Store** → **Sandbox Account**
2. Normal App Store hesabınızla **ÇIKIŞ** yapın (varsa)
3. Sandbox test hesabınızla **GİRİŞ** yapın
4. ⚠️ **ÖNEMLİ**: Sadece Sandbox hesabı aktif olmalı!

#### Adım 3: TestFlight'ta Test Edin
1. TestFlight'tan uygulamayı açın
2. Premium ekranına gidin
3. Bir paket seçin ve "Premium'a Geç" butonuna basın
4. 30-60 saniye bekleyin (ilk yükleme yavaş olabilir)
5. ✅ Ürünler yüklenirse: Test başarılı!
6. ❌ Ürünler yüklenmezse: Aşağıdaki sorun giderme adımlarını izleyin

---

### Yöntem 2: App Review'a Göndermeden Önce Kontrol

Eğer Sandbox test çalışmıyorsa, şunları kontrol edin:

#### Kontrol 1: Ürünlerin Durumu
- App Store Connect → Features → In-App Purchases
- Her ürünün durumu: **"Ready to Submit"** ✅
- Eğer "Missing Metadata" veya başka bir durum varsa, düzeltin

#### Kontrol 2: Product ID Eşleşmesi
Kodda kullanılan Product ID'ler:
- `com.alp.premium.monthly`
- `com.alp.premium.6months`
- `com.alp.premium.yearly`

App Store Connect'teki Product ID'ler **TAM OLARAK** bunlarla eşleşmeli!

#### Kontrol 3: Bekleme Süresi
- Yeni ürün oluşturduysanız: **24-48 saat** bekleyin
- App Store Connect API'nin ürünleri yayınlaması zaman alabilir

---

## 🐛 Sorun Giderme

### Problem 1: "Ürün yüklenemedi" Hatası

#### Çözüm Adımları:

1. **Sandbox hesabını kontrol edin**
   ```
   Settings → App Store → Sandbox Account
   ```
   - Sandbox hesabı ile giriş yapılmış mı?
   - Normal App Store hesabı ile çıkış yapılmış mı?

2. **Cihazı yeniden başlatın**
   - Bazen Sandbox hesabı değişiklikleri hemen yansımaz

3. **Uygulamayı silip yeniden yükleyin**
   - TestFlight'tan uygulamayı silin
   - Yeniden yükleyin

4. **İnternet bağlantısını kontrol edin**
   - WiFi veya Cellular bağlantısı aktif mi?
   - Farklı bir ağ deneyin

5. **48 saat bekleyin**
   - Yeni ürünler App Store Connect API'de aktif olması zaman alabilir

---

### Problem 2: Sandbox Hesabı Çalışmıyor

#### Çözüm:

1. **Yeni bir Sandbox hesabı oluşturun**
   - Eski hesabı silin
   - Yeni bir email ile yeni hesap oluşturun

2. **Email formatını kontrol edin**
   - Email gerçek bir email olmamalı
   - Daha önce App Store'da kullanılmamış olmalı
   - Örnek: `test123@example.com`

3. **Şifre gereksinimlerini kontrol edin**
   - En az 8 karakter
   - Büyük-küçük harf
   - Rakam içermeli

---

### Problem 3: Ürünler Hala Yüklenmiyor

#### Son Çare: App Review'a Gönderme

Eğer tüm yukarıdaki adımları denediyseniz ve hala çalışmıyorsa:

1. **App Store Connect → Versions**
2. Yeni bir versiyon oluşturun (veya mevcut versiyonu düzenleyin)
3. **In-App Purchases and Subscriptions** bölümüne gidin
4. 3 ürünü seçin:
   - Premium Monthly
   - Premium 6 Months
   - Premium Yearly
5. Versiyonu **Submit for Review** yapın
6. ⚠️ **ÖNEMLİ**: "Submit for Review" yaptıktan sonra **HEMEN** iptal edebilirsiniz!
   - Bu işlem ürünlerin API'de aktif olmasını sağlar
   - Sonra versiyonu iptal edip TestFlight'ta test edebilirsiniz

---

## ✅ Test Başarılı Olduğunda

Eğer TestFlight'ta test başarılı olduysa:

1. ✅ Ürünler yükleniyor
2. ✅ Satın alma ekranı açılıyor
3. ✅ Sandbox'ta test satın alma yapılabiliyor

O zaman **GÜVENLE** App Review'a gönderebilirsiniz!

---

## ⚠️ Önemli Notlar

1. **Sandbox Test Hesabı Zorunlu**: TestFlight'ta test ederken mutlaka Sandbox hesabı kullanın
2. **Gerçek Para Harcanmaz**: Sandbox'ta yapılan satın almalar gerçek para harcamaz
3. **Bekleme Süresi**: Yeni ürünler 24-48 saat içinde aktif olur
4. **Submit İptal Edilebilir**: Versiyonu gönderip sonra iptal edebilirsiniz, bu ürünlerin aktif olmasını sağlar

---

## 🎯 Önerilen Test Sırası

1. ✅ Sandbox hesabı oluşturun
2. ✅ Cihazda Sandbox hesabı ile giriş yapın
3. ✅ TestFlight'ta test edin
4. ✅ Çalışıyorsa → App Review'a gönderin
5. ❌ Çalışmıyorsa → 48 saat bekleyin ve tekrar deneyin
6. ❌ Hala çalışmıyorsa → Versiyonu Submit edip iptal edin (yukarıdaki Problem 3)

---

## 📞 Hala Çalışmıyorsa

1. Xcode Console loglarını kontrol edin
2. `TESTFLIGHT_TROUBLESHOOTING.md` dosyasını okuyun
3. App Store Connect → Support → Contact Us






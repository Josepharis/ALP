# Sandbox Çalışmıyor - Çözüm Rehberi

## 🐛 Sorun: Sandbox Hesabı ile Giriş Yaptınız Ama Ürünler Yüklenmiyor

Bu durumda **en olası neden**: "Ready to Submit" durumundaki ürünler bazen TestFlight'ta çalışmaz!

---

## ✅ ÇÖZÜM: Versiyonu Submit Edip İptal Edin

Bu işlem ürünlerin App Store Connect API'de aktif olmasını sağlar ve TestFlight'ta çalışmasını sağlar.

### Adım 1: App Store Connect'te Versiyon Oluşturun

1. **App Store Connect** → **My Apps** → **ALP** uygulamanızı seçin
2. Sol menüden **App Store** → **Versions** seçin
3. **+ Version** butonuna tıklayın (veya mevcut versiyonu düzenleyin)
4. Versiyon numarasını girin (örn: 1.0.8)

### Adım 2: In-App Purchases'ı Seçin

1. Versiyon sayfasında aşağı kaydırın
2. **In-App Purchases and Subscriptions** bölümünü bulun
3. **+** butonuna tıklayın
4. 3 ürünü seçin:
   - ✅ Premium Monthly (`com.alp.premium.monthly`)
   - ✅ Premium 6 Months (`com.alp.premium.6months`)
   - ✅ Premium Yearly (`com.alp.premium.yearly`)
5. **Done** butonuna tıklayın

### Adım 3: Submit Edip Hemen İptal Edin

1. Versiyon sayfasının en üstüne gidin
2. **Submit for Review** butonuna tıklayın
3. Gerekli bilgileri doldurun (Export Compliance, Content Rights, vb.)
4. **Submit** butonuna tıklayın
5. ⚠️ **HEMEN** (birkaç dakika içinde) **Remove from Review** butonuna tıklayın
   - Bu işlem versiyonu review'dan çıkarır ama ürünlerin API'de aktif olmasını sağlar

### Adım 4: TestFlight'ta Test Edin

1. 5-10 dakika bekleyin (API güncellemesi için)
2. TestFlight'ta uygulamayı açın
3. Premium ekranına gidin
4. Ürünlerin yüklendiğini kontrol edin
5. ✅ Artık çalışmalı!

---

## 🔍 Alternatif Çözümler

### Çözüm 1: 48 Saat Bekleyin

Eğer ürünleri yeni oluşturduysanız:
- App Store Connect API'nin ürünleri yayınlaması 24-48 saat sürebilir
- Bu süre içinde bekleyip tekrar deneyin

### Çözüm 2: Sandbox Hesabını Yenileyin

1. **Settings** → **App Store** → **Sandbox Account**
2. Mevcut Sandbox hesabı ile çıkış yapın
3. Yeni bir Sandbox hesabı oluşturun (App Store Connect'te)
4. Yeni hesap ile giriş yapın
5. Uygulamayı yeniden başlatın

### Çözüm 3: Cihazı ve Uygulamayı Yeniden Başlatın

1. Cihazı kapatıp açın
2. TestFlight'tan uygulamayı silin
3. Yeniden yükleyin
4. Sandbox hesabı ile giriş yapın
5. Tekrar deneyin

---

## ⚠️ Önemli Notlar

1. **Submit İptal Edilebilir**: Versiyonu submit edip sonra iptal etmek sorun değil
2. **Ürünler Aktif Kalır**: İptal etseniz bile ürünler API'de aktif kalır
3. **TestFlight'ta Test**: İptal ettikten sonra TestFlight'ta test edebilirsiniz
4. **Gerçek Review**: Daha sonra gerçek review için tekrar submit edebilirsiniz

---

## 🎯 Önerilen Sıra

1. ✅ Versiyonu Submit edip iptal edin (yukarıdaki adımlar)
2. ✅ 5-10 dakika bekleyin
3. ✅ TestFlight'ta test edin
4. ✅ Çalışıyorsa → Başarılı!
5. ❌ Çalışmıyorsa → 48 saat bekleyip tekrar deneyin

---

## 📞 Hala Çalışmıyorsa

1. Xcode Console loglarını kontrol edin
2. App Store Connect → Support → Contact Us
3. Apple Developer Support'a başvurun

---

## 💡 Neden Bu Çözüm Çalışıyor?

Apple'ın sisteminde, "Ready to Submit" durumundaki ürünler bazen App Store Connect API'de aktif olmaz. Versiyonu submit etmek (sonra iptal etseniz bile) ürünlerin API'de aktif olmasını sağlar. Bu, TestFlight'ta test etmenizi mümkün kılar.






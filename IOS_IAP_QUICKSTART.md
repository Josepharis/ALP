# 🚀 iOS Satın Alma - Hızlı Başlangıç

## ✅ YAPILDI: Kod Düzeltmeleri

1. ✅ `Runner.entitlements` → IAP capability + production environment
2. ✅ `RunnerProfile.entitlements` → IAP capability + production environment  
3. ✅ `Configuration.storekit` → Aylık abonelik eklendi

## 🔴 YAPILMASI GEREKEN: App Store Connect (5-10 dakika)

### 1️⃣ App Store Connect'e Git
https://appstoreconnect.apple.com → My Apps → ALP → In-App Purchases

### 2️⃣ Bu 3 Ürünü Oluştur/Kontrol Et:

```
com.yftsoftware.monthly    → Aylık (1 month)
com.yftsoftware.six        → 6 Aylık (6 months)  
com.alp.premium.yearly     → Yıllık (1 year)
```

**Durum:** "Ready to Submit" veya "Approved" olmalı

### 3️⃣ Sandbox Test Hesabı Oluştur:
Users and Access → Sandbox Testers → Add New

### 4️⃣ Cihazda Sandbox ile Giriş:
Settings → App Store → Sandbox Account

## 🔨 Yeni Build Oluştur

```bash
flutter clean
flutter pub get
flutter build ios --release
```

Sonra Xcode'da Archive yap ve TestFlight'a yükle.

## 🧪 Test Et

1. TestFlight'tan aç
2. Premium ekranına git  
3. Satın al butonuna bas
4. Ürünler 30-60 saniye içinde yüklenmeli

## 📝 Detaylı Rehber

Tüm detaylar için: `IOS_IAP_FIX_COMPLETE.md`

---

**Özet:** Kod hazır ✅ → App Store Connect'te ürün oluştur 🔴 → Yeni build yükle 🔨 → Test et 🧪

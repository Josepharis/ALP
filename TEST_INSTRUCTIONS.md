# Test Talimatları - iOS Satın Alma

## 🔍 Kontrol Listesi

### 1. App Store Connect Kontrolü

**Subscription Group kontrolü:**
```
App Store Connect → In-App Purchases → Her ürüne tıklayın
```

Kontrol edin:
- ✅ Aylık: com.yftsoftware.monthly → Subscription Group: ?
- ✅ 6 Aylık: com.alp.premium.6months → Subscription Group: ?
- ✅ Yıllık: com.alp.premium.yearly → Subscription Group: ?

**HEPSİ AYNI SUBSCRIPTION GROUP'TA OLMALI!**

Örnek:
- ✅ DOĞRU: Hepsi "Premium Subscriptions" grubunda
- ❌ YANLIŞ: Aylık "Group A"da, diğerleri "Group B"de

---

### 2. Xcode Console Log Kontrolü

Uygulamayı Xcode'dan çalıştırın ve şu logları arayın:

```
🔧 Initializing InAppPurchaseService...
📦 Loading products...
✅ Loaded X products: [...]
```

**Beklenen:**
```
✅ Loaded 3 products: [com.yftsoftware.monthly, com.alp.premium.6months, com.alp.premium.yearly]
```

**Eğer şunu görüyorsanız:**
```
✅ Loaded 1 products: [com.yftsoftware.monthly]
⚠️ Products not found: [com.alp.premium.6months, com.alp.premium.yearly]
```

→ **Sebep:** 6 aylık ve yıllık App Store Connect'te aktif değil veya Product ID yanlış

---

### 3. Butona Basınca Ne Oluyor?

Premium ekranında her butona basın ve console'u izleyin:

**Aylık butonu (çalışıyor):**
```
🛒 Starting purchase for: com.yftsoftware.monthly
✅ Product found: ALP Premium Monthly - $X.XX
🚀 Initiating purchase...
💳 buyProductDetails CALLED
```

**6 Aylık/Yıllık butonu (çalışmıyor):**

**Senaryo A: Ürün bulunamadı**
```
🛒 Starting purchase for: com.alp.premium.yearly
❌ Product not found: com.alp.premium.yearly
Available products: [com.yftsoftware.monthly]
```
→ **Sebep:** Ürün API'de yok

**Senaryo B: Ürün var ama satın alma başlamıyor**
```
🛒 Starting purchase for: com.alp.premium.yearly
✅ Product found: ALP Premium Yearly - $X.XX
🚀 Initiating purchase...
💳 buyProductDetails CALLED
❌ Purchase could not be initiated
```
→ **Sebep:** StoreKit hatası (pending transaction, provisioning, vs.)

---

## 🎯 Test Adımları

1. **Xcode'dan uygulamayı başlatın** (cihazda, Release mode)
2. **Console'u açın** (⌘+Shift+Y)
3. **Premium ekranına gidin**
4. **Console'da şunu arayın:** "Loaded" veya "products"
5. **Kaç ürün yüklendi? Hangileri?**
6. **Her butona basın ve console'u izleyin**
7. **Logları buraya yapıştırın**

---

## 💡 Hızlı Test

Terminal'de:
```bash
# Cihaza bağlı uygulamayı başlat
cd /Users/yusuf/Desktop/ALP
flutter run -d DEVICE_ID --release

# Console logları izle
# Premium ekranına git
# Ürün yükleme loglarını gör
```

Logları bana gönderin!

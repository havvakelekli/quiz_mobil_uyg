# 📱 Ön Kabul Sınav Hazırlık - Quiz Mobil Uygulaması

**Geliştirici:** Havva Kelekli  
**Teknolojiler:** Flutter, Dart, SharedPreferences, Material 3  
**Platformlar:** Android, iOS, Web  

---

## 🎯 Proje Hakkında

Bu uygulama, kursların ve akademilerin **ön kabul sınavlarına (CISCO Hazırlık, Bilgisayar Sistem Bakım Onarım vb.)** hazırlanmak isteyen adaylar için geliştirilmiş modern, çevrimdışı (offline) çalışabilen etkileşimli bir mobil quiz uygulamasıdır.

Uygulama, kullanıcılara sınav kategorileri sunar, soruları renkli geri bildirimlerle çözmelerini sağlar ve en yüksek skorlarını cihaz hafızasında güvenle saklar.

---

## 🚀 Öne Çıkan Özellikler

- 📱 **Cross-Platform:** Hem Android hem iOS hem de Web üzerinde tam uyumlu görünüm.
- 🎨 **Özel Mor Tema:** Ergonomik, göz yormayan modern mor tasarım ve "Havva Kelekli" imzalı başlık.
- 🏆 **Yerel Hafıza & İstatistikler:** `SharedPreferences` entegrasyonu ile en yüksek skor ve çözülen test sayısı takibi.
- 🟢🔴 **Dinamik Cevap Renklendirmesi:** Doğru cevapta yeşil 🟢, yanlış cevapta kırmızı 🔴 yanan görsel öğrenme sistemi.
- 🌐 **%100 Çevrimdışı (Offline):** İnternet bağlantısı gerektirmeyen bağımsız yerel soru bankası.
- 📐 **Duyarlı (Responsive) Tasarım:** Masaüstü ve Web tarayıcılarında ortalanmış kompakt düzen.

---

## 🏗️ Proje Mimarisi

Proje, temiz kod (Clean Code) ve nesne yönelimli programlama (OOP) prensiplerine uygun olarak modüler şekilde tasarlanmıştır:

```text
lib/
├── main.dart               # Uygulama başlangıç noktası
├── models/
│   └── soru.dart           # Soru model sınıfı (Data Model)
├── data/
│   └── soru_bankasi.dart   # Kategorize edilmiş soru veri deposu
├── services/
│   └── skor_servisi.dart   # SharedPreferences yerel hafıza yönetimi
└── screens/
    ├── ana_sayfa.dart      # İstatistikler ve Kategori seçim ekranı
    └── quiz_ekrani.dart    # Soru ve test çözme ekranı
```

---

## 🛠️ Kurulum ve Çalıştırma

Projeyi bilgisayarınızda çalıştırmak için:

1. Bu depoyu klonlayın:
   ```bash
   git clone https://github.com/havvakelekli/quiz_mobil_uyg.git
   ```
2. Proje klasörüne gidin:
   ```bash
   cd quiz_mobil_uyg
   ```
3. Bağımlılıkları indirin:
   ```bash
   flutter pub get
   ```
4. Uygulamayı çalıştırın:
   ```bash
   flutter run
   ```

### 📱 Telefona Kurulabilir APK Üretme:
```bash
flutter build apk --debug
```

---

## ⚖️ Yasal Uyarı

> **Not:** Bu uygulama, adayların ön kabul sınavlarına hazırlanmasına yardımcı olmak amacıyla özgün sorularla geliştirilmiş bağımsız bir pratik uygulamasıdır. Adı geçen kurumlarla resmi bir bağı veya sponsorluğu bulunmamaktadır.

---

**Geliştirici:** [Havva Kelekli](https://github.com/havvakelekli)

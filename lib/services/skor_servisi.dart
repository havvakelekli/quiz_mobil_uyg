import 'package:shared_preferences/shared_preferences.dart';

class SkorServisi {
  static const String _keyEnYuksekSkor = 'en_yuksek_skor';
  static const String _keyCozulenTestSayisi = 'cozulen_test_sayisi';

  // 1. Yeni Skoru Kaydetme Fonksiyonu
  static Future<void> skoruKaydet(int yeniPuan) async {
    final prefs = await SharedPreferences.getInstance();

    // Mevcut en yüksek skoru oku
    int mevcutEnYuksek = prefs.getInt(_keyEnYuksekSkor) ?? 0;

    // Eğer yeni puan daha yüksekse güncelle
    if (yeniPuan > mevcutEnYuksek) {
      await prefs.setInt(_keyEnYuksekSkor, yeniPuan);
    }

    // Toplam çözülen test sayısını 1 artır
    int mevcutTestSayisi = prefs.getInt(_keyCozulenTestSayisi) ?? 0;
    await prefs.setInt(_keyCozulenTestSayisi, mevcutTestSayisi + 1);
  }

  // 2. En Yüksek Skoru Okuma
  static Future<int> enYuksekSkoruGetir() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(_keyEnYuksekSkor) ?? 0;
  }

  // 3. Toplam Çözülen Test Sayısını Okuma
  static Future<int> toplamTestSayisiniGetir() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(_keyCozulenTestSayisi) ?? 0;
  }
}

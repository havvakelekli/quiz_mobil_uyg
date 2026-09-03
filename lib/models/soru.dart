// Bir sorunun veri yapısını (şablonunu) belirten Model sınıfımız
class Soru {
  final String soruMetni; // Soru cümlesi
  final List<String> siklar; // ["A şıkkı", "B şıkkı", "C şıkkı", "D şıkkı"]
  final int dogruCevapIndex; // Doğru cevabın listedeki sırası (0, 1, 2 veya 3)

  // Constructor (Yapıcı Metot) - Java ile birebir aynı mantık
  Soru({
    required this.soruMetni,
    required this.siklar,
    required this.dogruCevapIndex,
  });
}

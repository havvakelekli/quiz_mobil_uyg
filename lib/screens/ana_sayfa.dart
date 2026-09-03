import 'package:flutter/material.dart';
import 'quiz_ekrani.dart';
import '../services/skor_servisi.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  int enYuksekSkor = 0;
  int cozulenTestSayisi = 0;

  final Color morRenk = Colors.purple.shade800;

  @override
  void initState() {
    super.initState();
    _skorlariYukle();
  }

  Future<void> _skorlariYukle() async {
    int yuksekSkor = await SkorServisi.enYuksekSkoruGetir();
    int testSayisi = await SkorServisi.toplamTestSayisiniGetir();
    setState(() {
      enYuksekSkor = yuksekSkor;
      cozulenTestSayisi = testSayisi;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: morRenk,
      appBar: AppBar(
        toolbarHeight:
            85, // İki büyük başlık rahat sığsın diye yüksekliği genişlettik
        title: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            // 1. BAŞLIK
            Text(
              'Ön Kabul Sınav Hazırlık',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 4),
            // 2. BAŞLIK (BİREBİR AYNI STİLDE)
            Text(
              'Havva Kelekli',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
        backgroundColor: morRenk,
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 450),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // İSTATİSTİK KARTI
                Card(
                  color: Colors.white,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            const Icon(
                              Icons.emoji_events,
                              color: Colors.amber,
                              size: 32,
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              'En Yüksek Skor',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              '$enYuksekSkor',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: morRenk,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 40,
                          width: 1,
                          color: Colors.purple.shade100,
                        ),
                        Column(
                          children: [
                            Icon(Icons.fact_check, color: morRenk, size: 32),
                            const SizedBox(height: 5),
                            const Text(
                              'Çözülen Test',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              '$cozulenTestSayisi',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: morRenk,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30),

                const Text(
                  'Hazırlanmak İstediğiniz Kategoriyi Seçin',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),

                // Kategori 1: CISCO
                ElevatedButton.icon(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuizEkrani(
                          kategoriAdi: 'CISCO Kursu Hazırlık Soruları',
                        ),
                      ),
                    );
                    _skorlariYukle();
                  },
                  icon: const Icon(Icons.code),
                  label: const Text('CISCO Kursu Hazırlık Soruları'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    backgroundColor: Colors.white,
                    foregroundColor: morRenk,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 15),

                // Kategori 2: Bilgisayar Sistem Bakım Onarım
                ElevatedButton.icon(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuizEkrani(
                          kategoriAdi:
                              'Bilgisayar Sistem Bakım Onarım Soruları',
                        ),
                      ),
                    );
                    _skorlariYukle();
                  },
                  icon: const Icon(Icons.build),
                  label: const Text('Bilgisayar Sistem Bakım Onarım Soruları'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    backgroundColor: Colors.white,
                    foregroundColor: morRenk,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

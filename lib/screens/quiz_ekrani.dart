import 'package:flutter/material.dart';
import '../models/soru.dart';
import '../data/sorular.dart';
import '../services/skor_servisi.dart'; // Skor servisini bağladık

class QuizEkrani extends StatefulWidget {
  final String kategoriAdi;

  const QuizEkrani({super.key, required this.kategoriAdi});

  @override
  State<QuizEkrani> createState() => _QuizEkraniState();
}

class _QuizEkraniState extends State<QuizEkrani> {
  late List<Soru> sorular;

  int aktifSoruIndex = 0;
  int puan = 0;
  int? secilenIndex;
  bool cevapVerildiMi = false;

  @override
  void initState() {
    super.initState();
    sorular = SoruBankasi.getSorularByKategori(widget.kategoriAdi);
  }

  void cevabiKontrolEt(int tiklananIndex) {
    if (cevapVerildiMi) return;

    setState(() {
      secilenIndex = tiklananIndex;
      cevapVerildiMi = true;

      if (tiklananIndex == sorular[aktifSoruIndex].dogruCevapIndex) {
        puan += 10;
      }
    });

    Future.delayed(const Duration(milliseconds: 1500), () {
      setState(() {
        if (aktifSoruIndex < sorular.length - 1) {
          aktifSoruIndex++;
          secilenIndex = null;
          cevapVerildiMi = false;
        } else {
          // QUIZ BİTTİ -> SKORU TELEFON HAFIZASINA KAYDET
          SkorServisi.skoruKaydet(puan);
          sonucDiyalogunuGoster();
        }
      });
    });
  }

  Color getButonArkaPlanRengi(int index) {
    if (!cevapVerildiMi) return Colors.transparent;
    if (index == sorular[aktifSoruIndex].dogruCevapIndex) {
      return Colors.green.shade100;
    }
    if (index == secilenIndex) {
      return Colors.red.shade100;
    }
    return Colors.transparent;
  }

  Color getButonCerceveRengi(int index) {
    if (!cevapVerildiMi) return Colors.indigo;
    if (index == sorular[aktifSoruIndex].dogruCevapIndex) {
      return Colors.green;
    }
    if (index == secilenIndex) {
      return Colors.red;
    }
    return Colors.grey;
  }

  void sonucDiyalogunuGoster() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('🎉 Quiz Tamamlandı!'),
        content: Text(
          'Tebrikler!\nToplam Puanınız: $puan / ${sorular.length * 10}',
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pop(context);
            },
            child: const Text('Ana Sayfaya Dön'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final mevcutSoru = sorular[aktifSoruIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.kategoriAdi,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigo,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Soru ${aktifSoruIndex + 1} / ${sorular.length}',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 10),

            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  mevcutSoru.soruMetni,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),

            ...List.generate(
              mevcutSoru.siklar.length,
              (index) => Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: OutlinedButton(
                  onPressed: () => cevabiKontrolEt(index),
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                    backgroundColor: getButonArkaPlanRengi(index),
                    side: BorderSide(
                      color: getButonCerceveRengi(index),
                      width: 2,
                    ),
                  ),
                  child: Text(
                    mevcutSoru.siklar[index],
                    style: TextStyle(
                      fontSize: 18,
                      color: getButonCerceveRengi(index),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

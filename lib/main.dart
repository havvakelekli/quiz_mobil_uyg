import 'package:flutter/material.dart';
import 'screens/ana_sayfa.dart'; // Ana sayfayı import ettik

void main() {
  runApp(const QuizUygulamasi());
}

class QuizUygulamasi extends StatelessWidget {
  const QuizUygulamasi({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnaSayfa(), // Başlangıç ekranı
    );
  }
}

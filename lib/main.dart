import 'package:flutter/material.dart';
import 'package:geofrance/pages/home_page.dart';
import 'package:geofrance/pages/quizz_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GeoFrance',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/quizz': (context) => const QuizzPage(),
      },
    );
  }
}

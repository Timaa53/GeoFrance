import 'package:flutter/material.dart';
import 'package:geofrance/components/app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const transparentBackground = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'images/background_main.webp',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: transparentBackground,
          appBar: MyAppBar(),
          body: MyBody(),
        ),
      ],
    );
  }
}

class MyBody extends StatelessWidget {
  const MyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Sauras-tu reconnaitre toutes les villes de France ?',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 30),
        ButtonStart(),
      ],
    );
  }
}

class ButtonStart extends StatelessWidget {
  const ButtonStart({super.key});
  static const primaryColor = Color(0xFF67bed9);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, '/quizz');
      },
      style: ElevatedButton.styleFrom(backgroundColor: primaryColor),
      child: Text('Commencer', style: TextStyle(color: Colors.white)),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:geofrance/components/app_bar.dart';
import 'package:geofrance/components/buttons_actions.dart';

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
        const ButtonStart(),
      ],
    );
  }
}

import 'package:flutter/material.dart';

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

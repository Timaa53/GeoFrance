import 'package:flutter/material.dart';
import 'package:geofrance/components/app_bar.dart';

class QuizzPage extends StatelessWidget {
  const QuizzPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Center(child: Text('Page du Quizz')),
    );
  }
}

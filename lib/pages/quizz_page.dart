import 'package:flutter/material.dart';
import 'package:geofrance/components/app_bar.dart';

class QuizzPage extends StatelessWidget {
  const QuizzPage({super.key});
  List<String> assets = [];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: MyAppBar(),
          body: Center(child: Text('Page du Quizz')),
        ),
      ],
    );
  }
}

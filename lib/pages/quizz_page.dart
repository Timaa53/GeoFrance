import 'package:flutter/material.dart';
import 'package:geofrance/components/app_bar.dart';
import 'package:geofrance/service/game_service.dart';
import 'package:geofrance/models/question_model.dart';

class QuizzPage extends StatefulWidget {
  const QuizzPage({super.key});

  @override
  State<QuizzPage> createState() => _QuizzPageState();
}

class _QuizzPageState extends State<QuizzPage> {
  static const transparentBackground = Colors.transparent;
  Question currentQuestion = GameService().createQuestion();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          currentQuestion.imagePath,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: transparentBackground,
          appBar: MyAppBar(),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(currentQuestion.propositions[0]),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(currentQuestion.propositions[1]),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(currentQuestion.propositions[2]),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(currentQuestion.propositions[3]),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  chechAnswer(String) {}
}

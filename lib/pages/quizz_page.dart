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
  Map<String, Color> buttonColors = {};

  void checkAnswer(String selectedAnswer) {
    setState(() {
      if (selectedAnswer == currentQuestion.responseCorrect) {
        buttonColors[selectedAnswer] = Colors.green;
      } else {
        buttonColors[selectedAnswer] = Colors.red;
        buttonColors[currentQuestion.responseCorrect] = Colors.green;
      }
    });
    Future.delayed(Duration(milliseconds: 1200), () {
      setState(() {
        currentQuestion = GameService().createQuestion();
        buttonColors.clear();
      });
    });
  }

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
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          checkAnswer(currentQuestion.propositions[0]);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              buttonColors[currentQuestion.propositions[0]],
                        ),
                        child: Text(currentQuestion.propositions[0]),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          checkAnswer(currentQuestion.propositions[1]);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              buttonColors[currentQuestion.propositions[1]],
                        ),
                        child: Text(currentQuestion.propositions[1]),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          checkAnswer(currentQuestion.propositions[2]);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              buttonColors[currentQuestion.propositions[2]],
                        ),
                        child: Text(currentQuestion.propositions[2]),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          checkAnswer(currentQuestion.propositions[3]);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              buttonColors[currentQuestion.propositions[3]],
                        ),
                        child: Text(currentQuestion.propositions[3]),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

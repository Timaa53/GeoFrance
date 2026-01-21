import 'package:geofrance/data/temp_data.dart';
import 'package:geofrance/models/question_model.dart';
import 'dart:math';

class GameService {
  Question createQuestion() {
    final randomIndex = Random().nextInt(questionsList.length);

    final placeToFind = questionsList[randomIndex];

    final responsesFalse = List.from(questionsList);
    responsesFalse.remove(placeToFind);

    responsesFalse.shuffle();

    final wrongAnswers = responsesFalse.sublist(0, 3);

    final propositionsNames = <String>[];
    propositionsNames.add(placeToFind.name);
    for (final propositionName in wrongAnswers) {
      propositionsNames.add(propositionName.name);
    }
    propositionsNames.shuffle();

    return Question(
      imagePath: placeToFind.img,
      propositions: propositionsNames,
      responseCorrect: placeToFind.name,
    );
  }
}

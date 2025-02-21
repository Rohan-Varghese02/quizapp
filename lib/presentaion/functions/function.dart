import 'package:quiz_app/data/data.dart';

List<String> getCorrectAnswer() {
  List<String> correctAnswer = [];
  for (int i = 0; i < questions.length; i++) {
    final question = questions[i];
    correctAnswer.add(question.answers[0]);
  }
  return correctAnswer;
}

int numberOfCorrectAnswers({
  required List<String> correctAnswer,
  required List<String> userAnswer,
}) {
  int count = 0;
  for (int i = 0; i < correctAnswer.length; i++) {
    if (correctAnswer[i] == userAnswer[i]) {
      count++;
    }
  }
  return count;
}

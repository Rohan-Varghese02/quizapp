import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quiz_app/data/data.dart';
import 'package:quiz_app/data/datamodel.dart';
import 'package:quiz_app/presentaion/pages/final_page.dart';
import 'package:quiz_app/presentaion/pages/question_page_widget/custom_answer_btn.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  List<String> answers = [];
  int number = 0;
  @override
  Widget build(BuildContext context) {
    final question = questions[number];
    List<String> shuffledAnswers = List.from(question.answers)
      ..shuffle(Random());
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: Text('Question Page', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                question.text,
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
              SizedBox(height: 10),
              CustomAnswerBtn(
                text: shuffledAnswers[0],
                onPressed: () {
                  setState(() {
                    if (number < questions.length - 1) {
                      answers.add(shuffledAnswers[0]);
                      number = number + 1;
                      print(answers);
                    } else {
                      answers.add(shuffledAnswers[0]);
                      Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (context) => FinalPage(answers: answers),
                        ),
                        (route) => false,
                      );
                    }
                  });
                },
              ),
              SizedBox(height: 10),
              CustomAnswerBtn(
                text: shuffledAnswers[1],
                onPressed: () {
                  setState(() {
                    if (number < questions.length - 1) {
                      answers.add(shuffledAnswers[1]);
                      number = number + 1;
                      print(answers);
                    } else {
                      answers.add(shuffledAnswers[1]);
                      Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (context) => FinalPage(answers: answers),
                        ),
                        (route) => false,
                      );
                    }
                  });
                },
              ),
              SizedBox(height: 10),
              CustomAnswerBtn(
                text: shuffledAnswers[2],
                onPressed: () {
                  setState(() {
                    if (number < questions.length - 1) {
                      answers.add(shuffledAnswers[2]);
                      number = number + 1;
                      print(answers);
                    } else {
                      answers.add(shuffledAnswers[2]);
                      Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (context) => FinalPage(answers: answers),
                        ),
                        (route) => false,
                      );
                    }
                  });
                },
              ),
              SizedBox(height: 10),
              CustomAnswerBtn(
                text: shuffledAnswers[3],
                onPressed: () {
                  setState(() {
                    if (number < questions.length - 1) {
                      answers.add(shuffledAnswers[3]);
                      number = number + 1;
                      print(answers);
                    } else {
                      answers.add(shuffledAnswers[3]);
                      Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (context) => FinalPage(answers: answers),
                        ),
                        (route) => false,
                      );
                    }
                  });
                },
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
// [Widgets, By combining widgets in code, Update UI as data changes, StatelessWidget, The UI is not updated]
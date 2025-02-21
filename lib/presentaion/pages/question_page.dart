import 'package:flutter/material.dart';
import 'package:quiz_app/data/data.dart';
import 'package:quiz_app/data/datamodel.dart';
import 'package:quiz_app/presentaion/pages/question_page_widget/custom_answer_btn.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    final question = questions[number];
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: Text('Question Page', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              question.text,
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
            SizedBox(height: 10),
            CustomAnswerBtn(
              text: question.answers[0],
              onPressed: () {
                setState(() {
                  number = number + 1;
                });
              },
            ),
            SizedBox(height: 10),

            CustomAnswerBtn(text: question.answers[1], onPressed: () {}),
            SizedBox(height: 10),

            CustomAnswerBtn(text: question.answers[2], onPressed: () {}),
            SizedBox(height: 10),

            CustomAnswerBtn(text: question.answers[3], onPressed: () {}),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

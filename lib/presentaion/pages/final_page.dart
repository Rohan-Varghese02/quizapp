import 'package:flutter/material.dart';
import 'package:quiz_app/data/data.dart';
import 'package:quiz_app/presentaion/functions/function.dart';
import 'package:quiz_app/presentaion/pages/home_page.dart';

class FinalPage extends StatelessWidget {
  final List<String> answers;
  const FinalPage({super.key, required this.answers});

  @override
  Widget build(BuildContext context) {
    List<String> correctAnswer = getCorrectAnswer();
    int mark = numberOfCorrectAnswers(
      correctAnswer: correctAnswer,
      userAnswer: answers,
    );
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text(
          'Result',
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              '$mark Out of ${answers.length} was Correct!',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                height: 450,
                child: ListView.builder(
                  itemCount: correctAnswer.length,
                  itemBuilder: (context, index) {
                    return correctAnswer[index] == answers[index]
                        ? ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.greenAccent,
                            child: Icon(Icons.check, color: Colors.green),
                          ),
                          title: Text(
                            correctAnswer[index],
                            style: TextStyle(color: Colors.lightGreenAccent),
                          ),
                          subtitle: Text(
                            answers[index],
                            style: TextStyle(color: Colors.green),
                          ),
                        )
                        : ListTile(
                          leading: CircleAvatar(
                            backgroundColor: const Color.fromARGB(
                              255,
                              238,
                              153,
                              153,
                            ),
                            child: Icon(Icons.close, color: Colors.red),
                          ),
                          title: Text(
                            correctAnswer[index],
                            style: TextStyle(color: Colors.lightGreenAccent),
                          ),
                          subtitle: Text(
                            answers[index],
                            style: TextStyle(color: Colors.redAccent),
                          ),
                        );
                  },
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurpleAccent,
              ),
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (ctx) => HomePage()),
                  (route) => false,
                );
              },
              child: Text('Retake Quiz', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}

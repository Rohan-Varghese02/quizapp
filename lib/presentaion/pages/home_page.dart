import 'package:flutter/material.dart';
import 'package:quiz_app/presentaion/pages/question_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/images/quiz-logo.png'),
              height: 350,
              width: 350,
              color: const Color.fromARGB(146, 255, 255, 255),
            ),
            SizedBox(height: 70),
            Text(
              'Learn Flutter The fun way!',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(height: 50),
            OutlinedButton.icon(
              onPressed: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => QuestionPage()));
              },
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              icon: Icon(Icons.arrow_forward_outlined, color: Colors.white),
              label: Text('Start Quiz', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}

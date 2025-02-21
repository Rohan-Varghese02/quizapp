import 'package:flutter/material.dart';

class CustomAnswerBtn extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomAnswerBtn({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(200, 50),
        backgroundColor: Colors.purpleAccent,
      ),
      child: Text(text, style: TextStyle(color: Colors.white)),
    );
  }
}

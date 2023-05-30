import 'package:flutter/material.dart';
import './questions.dart';

class QuestionPage extends StatelessWidget {
  // QuestionPage({super.key});

  final String questionText;

  QuestionPage(this.questionText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}

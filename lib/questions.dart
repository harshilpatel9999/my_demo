import 'package:flutter/material.dart';
import './more_figma.dart ';

class QuestionPage extends StatelessWidget {
  // QuestionPage({super.key});

  String questionText;

  QuestionPage(this.questionText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(11),
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}

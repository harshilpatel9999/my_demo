import 'package:flutter/material.dart';
import 'package:my_demo/questions.dart';
// import 'package:my_demo/more_figma.dart';

void main() {
  runApp(const MoreFigmaPage());
}

class MoreFigmaPage extends StatefulWidget {
  const MoreFigmaPage({super.key});

  @override
  State<MoreFigmaPage> createState() => _MoreFigmaPageState();
}

class _MoreFigmaPageState extends State<MoreFigmaPage> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite colour?',
      'what\'s your favriout animal?'
    ];
    return MaterialApp(
        home: Scaffold(
      // appBar: AppBar(
      //   title: Text('More Figma'),
      // ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height / 3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            QuestionPage(questions[questionIndex]),
            ElevatedButton(
              onPressed: answerQuestion,
              child: const Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: () {
                print(answerQuestion);
              },
              child: const Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: () {
                print(answerQuestion);
              },
              child: const Text('Answer 3'),
            ),
          ],
        ),
      ),
    ));
  }
}

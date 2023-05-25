import 'package:flutter/material.dart';
// import 'package:my_demo/more_figma.dart';

void main() {
  runApp(const MoreFigmaPage());
}

class MoreFigmaPage extends StatelessWidget {
  const MoreFigmaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Row(
        children: [
          const Text('Back'),
          const Text('My Digest'),
          ElevatedButton(
            onPressed: () {
              print('Answer choosen');
            },
            child: const Text('Premium'),
          ),
        ],
      ),
    ));
  }
}

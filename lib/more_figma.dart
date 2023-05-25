import 'package:flutter/material.dart';
// import 'package:my_demo/more_figma.dart';

void main() {
  runApp(const MoreFigmaPage());
}

class MoreFigmaPage extends StatelessWidget {
  const MoreFigmaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Text('Back'),
      ),
    );
  }
}

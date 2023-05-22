import 'package:flutter/material.dart';

void main() {
  runApp(MoreFigmaPage());
}

class MoreFigmaPage extends StatelessWidget {
  const MoreFigmaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyScrollablePage(),
    );
  }
}

class MyScrollablePage extends StatelessWidget {
  const MyScrollablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scrollable Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomBlock(
              icon: Icons.home,
              text: 'Home Block',
            ),
            CustomBlock(
              icon: Icons.folder,
              text: 'Files Block',
            ),
            CustomBlock(
              icon: Icons.person,
              text: 'Profile Block',
            ),
            CustomBlock(
              icon: Icons.shopping_cart,
              text: 'Cart Block',
            ),
            CustomBlock(
              icon: Icons.settings,
              text: 'Settings Block',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your desired action here
        },
        backgroundColor: Colors.orange,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

class CustomBlock extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomBlock({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      color: Colors.grey[300],
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: Icon(icon),
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}

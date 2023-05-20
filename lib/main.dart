import 'package:flutter/material.dart';
import 'package:my_demo/home_page.dart';
import 'package:my_demo/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Rootpage(),
    );
  }
}

class Rootpage extends StatefulWidget {
  const Rootpage({super.key});

  @override
  State<Rootpage> createState() => _RootpageState();
}

class _RootpageState extends State<Rootpage> {
  int currentPage = 0;
  List<Widget> pages = const [Homepage(), ProfilePage()];

//  set currentPage(dynamic value) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter')),
      body: pages[currentPage],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('Floating action Button');
        },
        child: const Icon(Icons.abc),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Person'),
          NavigationDestination(icon: Icon(Icons.people), label: 'People'),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}

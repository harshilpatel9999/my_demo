import 'package:flutter/material.dart';
import 'package:my_demo/home_page.dart';
import 'package:my_demo/knock_off.dart';
import 'package:my_demo/more_figma.dart';
import 'package:my_demo/my_digest.dart';
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
  int currentPage = 4;
  List<Widget> pages = [
    Homepage(),
    ProfilePage(),
    MyDigestPage(),
    KnockOffPage(),
    MoreFigmaPage()
  ];

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
          NavigationDestination(icon: Icon(Icons.diamond), label: 'My Digest'),
          NavigationDestination(
              icon: Icon(Icons.thunderstorm), label: 'Knockoff'),
          NavigationDestination(
              icon: Icon(Icons.more_horiz_rounded), label: 'More'),
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

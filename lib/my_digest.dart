import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyDigestPage(),
    );
  }
}

class MyDigestPage extends StatelessWidget {
  const MyDigestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Remove the app bar from the previous screen
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                color: Colors.blueGrey[900],
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  children: const [
                    IconTextWidget(
                      icon: Icons.home,
                      text: 'Home',
                    ),
                    IconTextWidget(
                      icon: Icons.person,
                      text: 'Profile',
                    ),
                    IconTextWidget(
                      icon: Icons.settings,
                      text: 'Settings',
                    ),
                    IconTextWidget(
                      icon: Icons.notifications,
                      text: 'Notifications',
                    ),
                    IconTextWidget(
                      icon: Icons.email,
                      text: 'Email',
                    ),
                    IconTextWidget(
                      icon: Icons.camera,
                      text: 'Camera',
                    ),
                    IconTextWidget(
                      icon: Icons.calendar_today,
                      text: 'Calendar',
                    ),
                    IconTextWidget(
                      icon: Icons.music_note,
                      text: 'Music',
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.blueGrey[900],
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: const Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/profile_picture.jpg'),
                  ),
                  SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'My Profile',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'John Doe',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blueGrey[900],
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: ListView(
                  children: const [
                    ListTile(
                      leading: Icon(Icons.phone),
                      title: Text('Phone'),
                    ),
                    ListTile(
                      leading: Icon(Icons.chat),
                      title: Text('Chat'),
                    ),
                    ListTile(
                      leading: Icon(Icons.map),
                      title: Text('Map'),
                    ),
                    ListTile(
                      leading: Icon(Icons.shopping_cart),
                      title: Text('Shopping'),
                    ),
                    ListTile(
                      leading: Icon(Icons.book),
                      title: Text('Book'),
                    ),
                    ListTile(
                      leading: Icon(Icons.movie),
                      title: Text('Movie'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Container(
          height: 56.0,
        ),
      ),
    );
  }
}

class IconTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconTextWidget({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}

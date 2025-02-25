import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // The index of the currently selected navigation bar item
  int _selectedIndex = 0;

  // Method to handle navigation when a bottom navigation item is tapped
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Images with Bottom Navigation'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Display different content based on selected index
              if (_selectedIndex == 0) ...[
                // Home Page Content
                Image.network(
                  "https://media.istockphoto.com/id/1263070782/photo/beautiful-mist-over-green-forest-on-mountain.jpg?s=612x612&w=0&k=20&c=QTI2fAeNTUYiUs7g4BK38_zPMuPC4GyyYV4Sys7LBb4=",
                ),
                Image.network(
                  "https://media.istockphoto.com/id/1186837330/photo/rainforest-valley.jpg?s=612x612&w=0&k=20&c=NCAOR1y9eLW8nCH8nrqNpcqwvWmegTuN5rSCN4cZDg8=",
                ),
                Image.network(
                  "https://media.istockphoto.com/id/1388206034/photo/landscape-of-the-mist-covered-mountain-in-the-morning-with-warmed-sun-beams-for-background.jpg?s=612x612&w=0&k=20&c=uiBi3iHngIMIgmpUjSX_uhdH-z9jHK5EjOG1TzZpOpE=",
                ),
              ] else if (_selectedIndex == 1) ...[
                // Settings Page Content
                Center(
                  child: Text('Settings Page'),
                ),
              ] else if (_selectedIndex == 2) ...[
                // About Page Content
                Center(
                  child: Text('About Page'),
                ),
              ],
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'About',
            ),
          ],
        ),
      ),
    );
  }
}
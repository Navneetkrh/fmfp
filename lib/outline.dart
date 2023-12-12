import 'package:flutter/material.dart';
import 'about.dart';
import 'home.dart';
import 'updates.dart';
import 'sessions.dart';

class OutlinePage extends StatefulWidget {
  const OutlinePage({Key? key}) : super(key: key);
  
  @override
  State<OutlinePage> createState() => _OutlinePageState();
}

class _OutlinePageState extends State<OutlinePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Image.asset('assets/fmfp.png'),
        title: Text('FMFP - 2023'),
        backgroundColor: Colors.indigo,
      ),
      body: _getBody(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Colors.indigo,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.5),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.update),
            label: 'Updates',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'About',
          ),
        ],
      ),
    );
  }

  Widget _getBody(int index) {
    switch (index) {
      case 0:
        // Home Page
        return Placeholder(fallbackHeight: 200.0, fallbackWidth: 200.0);
      case 1:
        // Updates Page
        return Placeholder(fallbackHeight: 200.0, fallbackWidth: 200.0);
      case 2:
        // About Page
        return AboutPage();
      default:
        return Text('Error: Invalid navigation index');
    }
  }
}

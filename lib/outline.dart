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
      
      body: _getBody(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor:Color(0xFF1E2046),
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
        return SessionsPage();
      case 1:
        // Updates Page
        return UpdatesPage();
      case 2:
        // About Page
        return AboutPage();
      default:
        return const Text('Error: Invalid navigation index');
    }
  }
}

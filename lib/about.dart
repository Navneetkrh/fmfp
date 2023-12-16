import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0), // Set height of AppBar here
        child: AppBar(
          leading: Image.asset('assets/fmfp.png'),
          title: Text('About us'),
          backgroundColor: Colors.indigo,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'This App was Made by the FMFP Volunteer team @ IIT Jodhpur',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/fmfp.png'),
        title: Text('About us'),
        backgroundColor: Colors.indigo,
        
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'This is the about page.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
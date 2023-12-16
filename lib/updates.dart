import 'package:flutter/material.dart';

class UpdatesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0), // here the desired height
        child: AppBar(
          leading: Image.asset('assets/fmfp.png'),
          title: Text('Important updates'),
          backgroundColor: Colors.indigo,
          elevation: 0,
        ),
      ),
      body: Container(
        color: Color.fromRGBO(30, 32, 70, 1), // Change the color here
        child: Padding(
          padding: const EdgeInsets.only(top: 90.0), // Adjust this value to change the starting position of the white container
          child: Container(
            child: Center(
        child: Text(
          'No Updates Yet',
          style: TextStyle(
            color:  Color.fromRGBO(30, 32, 70, 1),
            fontSize: 24,
          ),
        ),
      ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.indigo,
      
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: UpdatesPage(),
  ));
}
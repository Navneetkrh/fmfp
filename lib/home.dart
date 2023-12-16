import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'outline.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Image.asset('assets/fmfp.png'),
        title: Text('FMFP - 2023'),
        backgroundColor: Colors.indigo,
      ),
      body: SingleChildScrollView( // Added SingleChildScrollView
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [ 
            Container(
              padding: const EdgeInsets.all(30.0),
              child: const Text(
                'Welcome to FMFP 2023, Hosted by IIT Jodhpur',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25, // adjust the size as needed
                  fontFamily: 'Arial', // replace with your preferred font
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Stack(
              children: <Widget>[
                // Background
                  Container(
                    child: Image.asset(
                  'assets/homewala.png',
                  fit: BoxFit.cover,
                )),
                // Foreground
                Container(
                  margin: EdgeInsets.only(top: 240.0),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        ElevatedButton(
                          onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => const OutlinePage(dayno :1)));},
                          child: Text('Day 1'),
                          style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent, 
                          // change this color as needed
                          elevation: 10
                            )
                        ),
                        ElevatedButton(
                          
                          onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => const OutlinePage(dayno:2)));},
                          child: Text('Day 2'),
                          style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent, // change this color as needed
                            elevation: 10
                            ) ,
                          
                        ),
                        ElevatedButton(
                          onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => const OutlinePage(dayno:3)));},
                          child: Text('Day 3'),
                          style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent, 
                          elevation: 10// change this color as needed
                            )
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(30.0),
              child: const Text(
                'Please select the day you want to view the schedule for',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25, // adjust the size as needed
                  fontFamily: 'Arial', // replace with your preferred font
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
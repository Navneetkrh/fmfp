import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:fmfp/admin.dart';
import 'outline.dart';
import 'password.dart';


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
        title: Text('FMFP - 2023 Admin App'),
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
                'This is the Admin App for the event only for the organisers to push updates and view the schedule for the event.',
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
                        ElevatedButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text('Enter Password'),
                                  content: TextField(
                                    obscureText: true,
                                    onChanged: (value) {
                                      // Check if the entered password is correct
                                      if (value == '3600') {
                                        // If the password is correct, navigate to the AdminPage
                                        Navigator.pop(context);
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => AdminPage()),
                                        );
                                      }
                                    },
                                  ),
                                  actions: <Widget>[
                                    TextButton(
                                      child: Text('Cancel'),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: Text('Admin'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            elevation: 10,
                          ),
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
// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SessionObject extends StatelessWidget {
  const SessionObject({Key? key, required this.room, required this.name, required this.papers}) : super(key: key);
  final String room;
  final String name;
  final List<Map<String, dynamic>> papers;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      height: 150,
      child: Padding(
        padding: const EdgeInsets.only(top: 5 ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
         
          children: [
            Text(
              room,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
            ),
            GestureDetector(
              onTap: () {
                // Handle the tap event here. For example, navigate to the lectures page.
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => LecturesPage()),
                // );
              },
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      backgroundColor: Colors.white, // Set the background color to white
                      titleTextStyle: TextStyle(color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold), // Set the title text style to blue
                      contentTextStyle: TextStyle(color: Colors.black, fontSize: 16), // Set the content text style to black
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Lectures'),
                          IconButton(
                            icon: Icon(Icons.close),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      ),
                      content: SingleChildScrollView( // Add a SingleChildScrollView to enable scrolling when the content is too long
                        child: Column(
                          children: papers.map((paper) => RichText(
                            text: TextSpan(
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: '${paper['title']}\n',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(text: paper['authors'] ?? ''),
                                TextSpan(text: '\n\n'), // Add some space between each paper
                              ],
                            ),
                          )).toList(),
                        ),
                      ),
                    ),
                  
                  );
                },
                child: Center(
                  child: Text(
                    'View Lectures',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 10,
                  backgroundColor: Color.fromARGB(255, 30, 32, 70),
                  minimumSize: Size(100.0, 40.0),
                  shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20), 
          
        // This makes the button rounded
          ),
                ),
              ),
            ),
          ]),
      ),
      decoration: BoxDecoration(
        color: Colors.indigo, // set the color to white
        borderRadius: BorderRadius.circular(20)),
    );
  }
}
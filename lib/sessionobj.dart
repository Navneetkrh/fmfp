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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            room,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
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
                    backgroundColor: Colors.indigo[100], // Set the background color to a light shade of violet
                    titleTextStyle: TextStyle(color: Colors.indigo[800], fontSize: 20, fontWeight: FontWeight.bold), // Set the title text style
                    contentTextStyle: TextStyle(color: Colors.indigo[800], fontSize: 16), // Set the content text style
                    title: Center(
                      child: SingleChildScrollView( // Add a SingleChildScrollView to enable scrolling when the content is too long
                        child: Column(
                          children: papers.map((paper) => RichText(
                            text: TextSpan(
                              style: TextStyle(
                                color: Theme.of(context).textTheme.bodyText1?.color,
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
                backgroundColor: Color.fromARGB(255, 30, 32, 70),
                minimumSize: Size(100.0, 40.0)
              ),
            ),
          ),
        ]),
      decoration: BoxDecoration(
        color: Colors.indigo, // set the color to white
        borderRadius: BorderRadius.circular(20)),
    );
  }
}
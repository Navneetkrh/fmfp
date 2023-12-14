// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SessionObject extends StatelessWidget {
  const SessionObject({super.key,required this.room,required this.name,});
  final String room;
  final String name;

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
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFF1E2046),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                'View Lectures',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
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

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'sessionobj.dart';

class D1s1 extends StatelessWidget {
  const D1s1({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                        child: Text(
                          "      Venue:\nLecture Hall Complex",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Expanded(
                          child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white, // set the color to white
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(
                                  15), // round the top left corner
                              topRight: Radius.circular(
                                  15), // round the top right corner
                            ) // round the corners
                            ),
                        child: ListView(
                          padding: const EdgeInsets.all(20),
                          children: <Widget>[
                            SessionObject(room: "yo yo", name: "navneet is important" ),
                            SessionObject(room: "lhc 307", name: "navneet is important"),
                            SessionObject(room: "hehe", name: "navneet is not alive"),
                            SessionObject(room: "yo yo", name: "navneet is important")
                           
                          ],
                        ),
                      ))
                    ],
                  ),
                );
  }
}
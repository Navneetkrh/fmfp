// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'sessionobj.dart';

class SessionsPage extends StatefulWidget {
  const SessionsPage({super.key});

  @override
  State<SessionsPage> createState() => _SessionsPageState();
}

class _SessionsPageState extends State<SessionsPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FMFP - 2023",
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              leading: Image.asset('assets/fmfp.png'),
              title: Text('FMFP - 2023'),
              backgroundColor: Colors.indigo,
              bottom: const TabBar(
                labelColor: Colors.white,
                indicatorColor: Colors.white,
                isScrollable: true,
                tabs: [
                  Tab(text: 'Session 1'),
                  Tab(text: 'Session 2'),
                  Tab(text: 'Session 3'),
                  Tab(text: 'Session 4'),
                ],
              ),
            ),
            backgroundColor: Color(0xFF1E2046),
            
            body: TabBarView(
              children: [
                Container(
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
                            SessionObject(room: "yo yo", name: "navneet is important"),
                            SessionObject(room: "lhc 307", name: "navneet is important"),
                            SessionObject(room: "hehe", name: "navneet is not alive"),
                            SessionObject(room: "yo yo", name: "navneet is important")
                           
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
                Icon(Icons.music_video),
                Icon(Icons.music_video),
                Icon(Icons.music_video),
              ],
            )),
      ),
    );
  }
}

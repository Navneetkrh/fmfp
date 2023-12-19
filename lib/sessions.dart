// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'sessionobj.dart';
import 'd1s1.dart';
import 'd1s2.dart';
import 'd1s3.dart';

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
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.indigo,
              elevation: 0,
              leading: Image.asset('assets/fmfp.png'),
              title: Text('Day 1 Sessions'),
              actions: <Widget>[
                TextButton.icon(
                  onPressed: () {
                    Navigator.pop(context); // Navigate to the previous page
                  },
                  icon: Icon(Icons.calendar_today, size: 16, color: Colors.white), // Add a small icon
                  label: Text(
                    'Select Day',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(kToolbarHeight),
                child: Material(
                  color: Color(0xFF1E2046), // Set the color of the TabBar
                  child: TabBar(
                    labelColor: Colors.white,
                    indicatorColor: Colors.white,
                    tabs: [
                      Tab(text: 'Session 1'),
                      Tab(text: 'Session 2'),
                      Tab(text: 'Session 3'),
                    ],
                  ),
                ),
              ),
            ),
            backgroundColor: Color(0xFF1E2046),
            body: TabBarView(
              children: [
                D1s1(),
                D1s2(),
                D1s3(),
              ],
            )),
      ),
    );
  }
}
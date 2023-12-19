// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'd2s0.dart';
import 'sessionobj.dart';
import 'd2s1.dart';
import 'd2s2.dart';
import 'd2s3.dart';
import 'd2s4.dart';
import 'd2s5.dart';
import 'd2s6.dart';

class SessionsPage2 extends StatefulWidget {
  const SessionsPage2({super.key});

  @override
  State<SessionsPage2> createState() => _SessionsPage2State();
}

class _SessionsPage2State extends State<SessionsPage2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FMFP - 2023",
      home: DefaultTabController(
        length: 7,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.indigo,
              elevation: 0,
              leading: Image.asset('assets/fmfp.png'),
              title: Text('Day 2 Sessions'),
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
                    isScrollable: true,
                    labelColor: Colors.white,
                    indicatorColor: Colors.white,
                    tabs: [
                      Tab(text: 'Plenary Talk'),
                      Tab(text: 'Session 1'),
                      Tab(text: 'Session 2'),
                      Tab(text: 'Session 3'),
                      Tab(text: 'Session 4'),
                      Tab(text: 'Keynote Session 3'),
                      Tab(text: 'Keynote Session 4')
                    ],
                  ),
                ),
              ),
            ),
            backgroundColor: Color(0xFF1E2046),
            body: TabBarView(
              children: [
                D2s0(),
                D2s1(),
                D2s2(),
                D2s3(),
                D2s4(),
                D2s5(),
                D2s6()
              ],
            )),
      ),
    );
  }
}
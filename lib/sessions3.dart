// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'sessionobj.dart';
import 'd3s1.dart';
import 'd3s2.dart';
import 'd3s3.dart';
import 'd3s0.dart';
import 'd3s4.dart';

class SessionsPage3 extends StatefulWidget {
  const SessionsPage3({super.key});

  @override
  State<SessionsPage3> createState() => _SessionsPage3State();
}

class _SessionsPage3State extends State<SessionsPage3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FMFP - 2023",
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.indigo,
              elevation: 0,
              leading: Image.asset('assets/fmfp.png'),
              title: Text('Day 3 Sessions'),
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
                    isScrollable: true,
                    tabs: [
                      Tab(text: 'Plenary Talk'),
                      Tab(text: 'Session 1'),
                      Tab(text: 'Session 2'),
                      Tab(text: 'Session 3'),
                      Tab(text: 'Keynote '),
                    ],
                  ),
                ),
              ),
            ),
            backgroundColor: Color(0xFF1E2046),
            body: TabBarView(
              children: [
                D3s0(),
                D3s1(),
                D3s2(),
                D3s3(),
                D3s4(),
              ],
            )),
      ),
    );
  }
}
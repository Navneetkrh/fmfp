// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'sessionobj.dart';
import 'd3s1.dart';
import 'd3s2.dart';
import 'd3s3.dart';

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
        length: 3,
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
                ],
              ),
            ),
            backgroundColor: Color(0xFF1E2046),
            
            body: TabBarView(
              children: [
                D3s1(),
                D3s2(),
                D3s3(),
              ],
            )),
      ),
    );
  }
}
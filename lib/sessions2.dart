// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'sessionobj.dart';
import 'd2s1.dart';
import 'd2s2.dart';
import 'd2s3.dart';
import 'd2s4.dart';

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
                D2s1(),
                D2s2(),
                D2s3(),
                D2s4(),
              ],
            )),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'sessionobj.dart';
import 'd1s1.dart';

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
                D1s1(),
              //  D1s2(),
              //  D1s3(),
              ],
            )),
      ),
    );
  }
}

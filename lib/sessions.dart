// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SessionsPage extends StatefulWidget {
  const SessionsPage({super.key});

  @override
  State<SessionsPage> createState() => _SessionsPageState();
}

class _SessionsPageState extends State<SessionsPage> {
  @override
  Widget build(BuildContext context) {
     return 
     MaterialApp(
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
              isScrollable: true  ,
              tabs: [
                Tab(text: 'Session 1'),
                Tab(text: 'Session 2'),
                Tab(text: 'Session 3'),
                Tab(text: 'Session 4'),

              ],
            ),
            
          ),
          backgroundColor: Color( 0xFF1E2046),
          body: TabBarView(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                          child: Text("      "+"Venue:\nLecture Hall Complex"
                          ,style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),),
                        ),
       
                        
                Expanded(child:
                 ListView(
                  
                    
                  padding: const EdgeInsets.all(20),
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(8),
                      height: 150,
                      color: Color.fromARGB(255, 215, 204, 204),
                      child: const Center(child: Text('Entry A')),
                     
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      height: 150,
                      color: Color.fromARGB(255, 254, 159, 159),
                      child: const Center(child: Text('Entry B')),
                    ),
                    Container(
                      height: 150,
                      color: Color.fromARGB(255, 136, 87, 87),
                      child: const Center(child: Text('Entry C')),
                    ),
                  ],
                ))
                
                
       
                        
       
                      ],
                    ),
                  ),
                  Icon(Icons.music_video),
                  Icon(Icons.music_video),
                  Icon(Icons.music_video),
                ],
              )
           ),
       ),
     );
  }
}
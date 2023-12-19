import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'sessionobj.dart';

class D2s6 extends StatelessWidget {
  D2s6({Key? key}) : super(key: key);

  final Map<String, List<Map<String, String>>> papers = {
    "Keynote 4 \n3:55 to 4:30": [
      {
        'title': 'Renewed Global Interest in Nuclear Power in The Light of The Push for De-Carbonisation',
        'authors': 'Keynote Talk 7: Shri Joe Mohan (BARC)\nChair: Prof. Rajesh Patel (Director, Nirma University Gujarat)',
        'room': 'LHC 110',
      },
      {
        'title': 'Biomimetic CFD Study on various types of Fish-like Shape, Kinematics, and Swimming of a 2D and 3D Hydrofoil',
        'authors': 'Keynote Talk 8: Prof. Atul Sharma (IIT Bombay)\nChair: Prof. Prodyut Ranjan Chakraborty (IIT Jodhpur)',
        'room': 'LHC 308',
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text(
              "Venue:\nLecture Hall Complex",
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
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: ListView(
                padding: const EdgeInsets.all(20),
                children: <Widget>[
                  for (var session in papers.entries)
                    SessionObject(room: session.value[0]['room'] ?? 'No Room Assigned', name: session.key, papers: session.value),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
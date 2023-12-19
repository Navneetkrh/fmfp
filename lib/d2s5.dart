import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'sessionobj.dart';

class D2s5 extends StatelessWidget {
  D2s5({Key? key}) : super(key: key);

  final Map<String, List<Map<String, dynamic>>> papers = {
    "Keynote Talk 4": [
      {
        'title': 'Physics-based Digital Twin and towards Exascale Algorithms',
        'authors': 'Speaker: Prof. Santosh Ansumali (JNCASR)\nChair: Prof. Dhiman Chatterjee (IIT Madras)',
        'room': 'LHC 110',
      },
    ],
    "Keynote Talk 5": [
      {
        'title': 'Scramjet Engine Development for Hypersonic Vehicles',
        'authors': 'Speaker: Dr. BVN Charyalu DRLD Hyderabad, DRDO\nChair: Prof. Raghavan V (IIT Madras)',
        'room': 'LHC 308',
      },
    ],
    "Keynote Talk 6": [
      {
        'title': 'Insights into Generalized Scaling of Friction in Wall Turbulence',
        'authors': 'Speaker: Dr. Shivsai Ajit Dixit (IITM, Scientist F)\nChair: Prof. Jaywant H. Arakeri (IIT Jodhpur)',
        'room': 'LHC 106',
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
              "Keynote Session 3 \n12:55 to 1:30",
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
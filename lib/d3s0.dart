import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'sessionobj.dart';

class D3s0 extends StatelessWidget {
  D3s0({Key? key}) : super(key: key);

  final Map<String, List<Map<String, dynamic>>> papers = {
    "Prof. Aswatha Narayana Plenary Talk": [
      {
        'title': 'Opportunities and Challenges in Adopting Electro-fuels for Sustainable Transport',
        'authors': 'Speaker: Prof. Avinash Kumar Agarwal (IIT Kanpur)\nChair: Prof. Amaresh Dalal (IIT Guwahati)',
        'room': 'LHC 110',
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
              "Plenary 3 \n9:00 to 9:50",
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
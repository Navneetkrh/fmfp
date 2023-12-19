import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'sessionobj.dart';

class D3s4 extends StatelessWidget {
  D3s4({Key? key}) : super(key: key);

  final Map<String, List<Map<String, dynamic>>> papers = {
    "Keynote Talk 9": [
      {
        'title': 'The Fluid Dynamics of Dense Human Crowds: The Idea of Laminar-Turbulence Transition',
        'authors': 'Speaker: Prof. Mahesh Panchagnula (IIT Madras)\nChair: Prof. Amit Agrawal (IIT Bombay)',
        'room': 'LHC 110',
      },
    ],
    "Keynote Talk 10": [
      {
        'title': 'Coffee-Ring Effect: Fundamental Insights and Applications in Forensics',
        'authors': 'Speaker: Prof. Rajneesh Bhardwaj (IIT Bombay)\nChair: Prof. Shyama Prasad Das (IIT Madras)',
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
              "Keynote 5 \n12:55 to 1:30",
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
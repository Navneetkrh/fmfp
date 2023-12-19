
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'sessionobj.dart';

class D1s4 extends StatelessWidget {
  D1s4({Key? key}) : super(key: key);

  final Map<String, List<Map<String, dynamic>>> papers = {
    "Keynote Talk 1": [
      {
        'title': 'Water Unlocks',
        'authors': 'Speaker: Prof. Pradip Kumar Tiwari (IIT Jodhpur)-\nChair: Prof. Ratnesh Kumar Shukla (IISC, Bangalore)',
        'room': 'LHC 110',
      },
    ],
    "Keynote Talk 2": [
      {
        'title': 'Energy Harvesting via Vortex Induced Vibrations with Bistable Springs',
        'authors': 'Speaker: Prof. Amitabh Bhattacharya (IIT Delhi)-\nChair: Prof. Subhasish Dey (IIT Jodhpur)',
        'room': 'LHC 308',
      },
    ],
    "Keynote Talk 3": [
      {
        'title': 'Thermal Management in Electronics Devices and EV Batteries',
        'authors': 'Speaker: Prof. Mangesh Chaudhari (VIT Pune)-\nChair: Prof. Ashoke De (IIT Kanpur)',
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
              "12:55 to 1:30 Keynote\nSession 1",
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
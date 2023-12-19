
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'sessionobj.dart';

class D1s5 extends StatelessWidget {
  D1s5({Key? key}) : super(key: key);

  final Map<String, List<Map<String, dynamic>>> papers = {
    "Sponsor Talk 1": [
      {
        'title': 'Power of Optimization for Sustainable Product Development',
        'authors': 'Speaker: Shri Ramesha BS (Head - Academic, Altair)\nChair: Prof. B Ravindra (IIT Jodhpur)',
        'room': 'LHC 110',
      },
    ],
    "Sponsor Talk 2": [
      {
        'title': 'Doppler Optical Probe: An Innovative Instrument for Void Fraction, Bubble Size and Velocity Measurement',
        'authors': 'Speaker: Shri Stephane Gluck (CTO and Founder– A2 Photonic Sensors)\nChair: Prof. B Ravindra (IIT Jodhpur)',
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
              "Sponsor Talks",
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
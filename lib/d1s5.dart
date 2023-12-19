
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'sessionobj.dart';

class D1s5 extends StatelessWidget {
  D1s5({Key? key}) : super(key: key);

final Map<String, List<Map<String, String>>> papers = {
  "": [
    {
      'title': 'Sponsor Talk : Shri Ramesha BS (Head - Academic, Altair)',
      'authors': 'Power of Optimization for sustainable Product Development',
    },
    {
      'title': "Chair: Prof. B Ravindra (IIT Jodhpur)           "
    }
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
              "             Venue:\nLecture Hall Complex \n          3:55 to 4:30",
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
                color: Colors.white, // set the color to white
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), // round the top left corner
                  topRight: Radius.circular(15), // round the top right corner
                ), // round the corners
              ),
              child: ListView(
                padding: const EdgeInsets.all(20),
                children: <Widget>[
                  for (var session in papers.entries)
                    SessionObject(room: "LHC 110", name: session.key, papers: session.value),
                  
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
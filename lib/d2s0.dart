import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'sessionobj.dart';
class D2s0 extends StatelessWidget {
    D2s0({Key? key}) : super(key: key);

    final Map<String, List<Map<String, String>>> papers = {
        "Plenary 2 \n10:10 to 11:00": [
            {
                'title': 'Multiscale Approach for the Modelling and Simulation of Fluidized Bed with Heat and Mass Transfer',
                'authors': 'Prof. Subir Kar Plenary Talk: Prof. Olivier Simonin (University de Toulouse-CNRS France)\nChair: Prof. Jyotirmay Banerjee (SVNIT, Gujrat)',
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
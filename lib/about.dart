import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo, // Set the background color of the page
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
      
        child: AppBar(
            elevation: 0,
          leading: Image.asset('assets/fmfp.png'),
          title: Text('About us'),
          backgroundColor: Colors.indigo,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      InkWell(
                        child: Text(
                          'https://events.iitj.ac.in/fmfp2023/',
                          style: TextStyle(fontSize: 20, color: Colors.blue),
                        ),
                        onTap: () async {
                          if (await canLaunch('https://events.iitj.ac.in/fmfp2023/')) {
                            await launch('https://events.iitj.ac.in/fmfp2023/');
                          } else {
                            throw 'Could not launch https://events.iitj.ac.in/fmfp2023/';
                          }
                        },
                      ),
                      SizedBox(height: 20),
                      Text(
                        'This App was Made by the FMFP Volunteer team @ IIT Jodhpur',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'The 10th International and 50th National Conference on Fluid Mechanics and Fluid Power (FMFP-2023) is being held at the Indian Institute of Technology Jodhpur, India during December 20-22, 2023.\n\n'
                        'This conference is organized every year since 1969 at different venues in India with the guidance of National Society for Fluid Mechanics and Fluid Power (NSFMFP). The primary aim of this conference is to provide a platform and bring together the experts around the world to share the state-of-the-art information on various fluid mechanics and fluid power related topics.\n\n'
                        'Organized by The National Society for Fluid Mechanics and Fluid Power (NSFMFP) and Department of Mechanical Engineering at IIT Jodhpur.\n\n'
                        'The Department of Mechanical Engineering at IIT Jodhpur is devoted to quality engineering education and pursuits the excellence in research. The vision of the Department is to translate its research and to innovate in pedagogy to enable ignited young minds to find technological solutions for upcoming challenges.',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
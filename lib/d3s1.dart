import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'sessionobj.dart';

class D3s1 extends StatelessWidget {
  D3s1({Key? key}) : super(key: key);

  final Map<String, List<Map<String, String>>> papers = {
    "Measurement Techniques in Fluid Flows": [
      {
        'title': 'Optimization of Core Coolant Flow Rate Measurement Mechanism for Fast Breeder Reactor',
        'authors': 'Piyush Kumar Aggarwal, Indranil Banerjee, V Vinod',
      },
      {
        'title': 'Design, fabrication and assembly of a two-phase detection sensor array for molten lead based heavy metal coolants',
        'authors': 'Abhishek Saraswat, Rajendraprasad Bhattacharyay, Sateesh Gedupudi',
      },
      {
        'title': 'Multifractal detrended fluctuation analysis of human exhaled breath time series',
        'authors': 'Mukesh K, Rahul Tripathi, Mahesh V Panchagnula, Raghunathan Rengaswamy',
      },
      {
        'title': 'Determination of sodium leak rate through a realistic fatigue crack for justification of Leak Before Break approach for sodium piping',
        'authors': 'S S S Avinash Chitella, Palak Nayak, Avinash Kumar Acharya, Malarvizhi B, Hemanth Rao E, Ponraju D, Venkatraman B',
      },
    ],
  };

  
  final Map<String, List<Map<String, String>>> papers_2 = {
    "Computational Fluid Dynamics": [
      {
        'title': 'Thermo-hydraulic performance of nanofluid flow in various cross-section ducts: A CFD study',
        'authors': 'Anwesha Varma, NIDHUL KOTTAYAT',
      },
      {
        'title': '3-D numerical investigations on conjugate natural convection and thermal radiation in a cubical enclosure with inbuilt cylindrical heat-generating source',
        'authors': 'Tanna charan Sai, Mohd Sonu, Md Amanullah, Dushyant Sharma, Anil Kumar Sharma',
      },
      {
        'title': 'A Numerical and Theoretical Study of an Innovative Electrostatic Enhanced Air Filter for Fine Particle RemovalS',
        'authors': 'PRATIK KOKATE, Vaishnavi Katkade Katkade, Shubham Kavathale, promod kothmire, pramod kothmire',
      },
      {
        'title': 'A Numerical Investigation of Heat Transfer within a Cylindrical Enclosure enveloping a Helical Coil',
        'authors': 'Gloria Biswal, Subhasisa Rath, Sukanta Kumar Dash',
      },
      {
        'title': 'Numerical study of Francis Turbine using Open FOAM',
        'authors': 'Manish D Pipal, K M Singh, B K Gandhi',
      },
    ],
  };
final Map<String, List<Map<String, String>>> papers_3 = {
  "Fluid Structure Interaction": [
    {
      'title': 'Experimental and Numerical Investigation of Heat Transfer and Fluid Flow through a rectangular duct with Pulsating Flow',
      'authors': 'Mohammad Kamran Thakoo, Amir Yousf Sofi, Adnan Qayoum',
    },
    {
      'title': 'Wake transition behind a thrust producing thin pitching plate at Re = 1000',
      'authors': 'Arnab Kumar De, SANDIP SARKAR',
    },
    {
      'title': 'Investigation of Frequency Response of Bladeless Cylindrical Wind Turbine',
      'authors': 'Abhishek Pednekar, Shailesh Nikam',
    },
    {
      'title': 'Effect of velocity and aspect ratio on one- and two-way coupled fluid-structure interaction problems',
      'authors': 'Abhishek Garg, Abhishek Kundu',
    },
    {
      'title': 'Analysing Vibrations Produced by a Ground-Effect Based Vehicle Floor Through Computational Models.',
      'authors': 'Pranshu Vyas, Tarun Desai, Pushkar Sapre, Raaghav Dubey, Sabareesh R',
    },
  ],
};
final Map<String, List<Map<String, String>>> papers_4 = {
  "Multiphase Flows": [
    {
      'title': 'A Comparative Experimental Investigation on Critical Heat Flux during Pool Boiling using Heaters with Different Geometric Configurations.',
      'authors': 'Manoj Kothari, Hardik Kothadia, Bikash Pattanayak',
    },
    {
      'title': 'Bubble ascent in the presence of vertically applied electric field',
      'authors': 'Darshan Patel, R. Vishnu, S Vengadesan',
    },
    {
      'title': 'Effect of forward and reverse crossflow of air stream on rotary entrainment: A numerical exercise',
      'authors': 'Rakesh Roshan Apatta, Santosh Kumar Panda, Basanta Kumar Rana, Jnana Senapati',
    },
    {
      'title': 'Investigation of Dip Coating Process of a Wire Through Experimental and Numerical Simulations',
      'authors': 'Jishnu Goswami, Farzam Zoueshtiagh, K.R. Sreenivas',
    },
    {
      'title': 'Study of Permeability and Drag Foce for pressure-driven flow in porous Media',
      'authors': 'Tuba Fatima, Noura Noura Eddaoui, Pradeep Kumar',
    },
  ],
};
final Map<String, List<Map<String, String>>> papers_5 = {
  "Micro-Nano Scale Transport": [
    {
      'title': 'Performance Analysis of Automotive Radiator Using Nanoparticles',
      'authors': 'Himanshu Harip, Ashutosh Chitale, Mayank Gauba, HARIOM AHER, Vaishali Savale, Rugved Chavan, Laxmikant Mangate',
    },
    {
      'title': 'Numerical Simulation of Electro-Coalescence Enhancement via Novel Non-uniform Electric Field Design',
      'authors': 'Mayur Chaudhari, Tejas Kolte, Ajinkya Jadhav, Suyash Maradkar, Dr Pramod Kothmire',
    },
    {
      'title': 'Towards understanding evaporation dynamics of the sessile oil droplet on the hydrophobic flat surfaces in the boiling regime',
      'authors': 'D. Ramajayam, Vadivukkarasan M',
    },
    {
      'title': 'Experimental and Numerical Study on slug formation in T-Shape Microchannel',
      'authors': 'Tanuja Sheorey, Awesh Singh, Vijay Kumar Gupta',
    },
    {
      'title': 'Study of Pulsating Fluid Flow in Flexible Microchannels',
      'authors': 'Chinmay Ratnaparkhe, Vijay Duryodhan, Anand Prajapati',
    },
  ],
};
final Map<String, List<Map<String, String>>> papers_6 = {
  "Turbomachinery": [
    {
      'title': 'Design and Performance Analysis of Cooling Fan Propeller with higher flow rate by utilizing the Eppler 387 Airfoil',
      'authors': 'Aditya Anasune, Mangesh Chaudhari',
    },
    {
      'title': 'Numerical estimation of performance characteristics of double-acting tilting pad thrust bearing',
      'authors': 'Mohanish Goel, Aravindan Selvaraj, Sreedharan KV, Partha Sarathy U',
    },
    {
      'title': 'Effect of Notches on the Performance of the Savonius Turbine for Hydro Application',
      'authors': 'Jaykumar Patel, Dr. Vikram Rathod, Dr. Vimal Patel',
    },
    {
      'title': 'Recovering Energy Potential through ASRU for Agricultural Dependent Hydropower Plant',
      'authors': 'Maya Kurulekar, Krishnaswamy Kumar, Shardul Joshi',
    },
  ],
};
final Map<String, List<Map<String, String>>> papers_7 = {
  "Propulsion and Power": [
    {
      'title': 'Experimental Investigations for the Particulate Matter and Ultra-fine Particles Emissions during the Flame Combustion of Alumina- and Ceria-laden Diesel Fuel',
      'authors': 'Akshat Jain, Thaseem Thajudeen, Anirudha Ambekar',
    },
    {
      'title': 'Film cooling of second throat-throat ejector diffuser systems for high-altitude testing facilities',
      'authors': 'M.V. V. Srinivas and Arun Kumar R',
    },
    {
      'title': 'Numerical Study of Hysteresis related to the Unstart/Restart Cycle in Scramjet Engines',
      'authors': 'Vishesh V., Zaid Maniyar, Jayahar Sivasubramanian',
    },
    {
      'title': 'DNS of Jet Breakup for Diesel, Biodiesel and Ethanol Blends',
      'authors': 'Ankur Kumar, Mahashay Jee, Balaji S, Anubhav Sinha',
    },
  ],
};
final Map<String, List<Map<String, String>>> papers_8 = {
  "Miscellaneous Topics": [
    {
      'title': 'Passive ventilation of sustained gaseous leak in an enclosure',
      'authors': 'Ali Rangwala Raghuram Srinivasan, Vasudevan Raghavan',
    },
    {
      'title': 'Experimental Study on Finned Tube Type Air Cooled Heat Exchangers',
      'authors': 'Ganesh V, Arnab Dasgupta, Dinesh Chandraker, Sunil Sinha',
    },
    {
      'title': 'Experimental investigation on wettability of polypropylene plate with grooved surface',
      'authors': 'Devkant Varde, Manoj Arya',
    },
    {
      'title': 'Photothermal performance analysis of a concentrating direct absorption solar collector with Ag-Au blended plasmonic nanofluid',
      'authors': 'Dr Sanjay Kumar, Parminder Singh, Ashok Kumar Bagha, Nikhil Chander, Manoj Kumar Singh',
    },
    {
      'title': 'Depth-Power calibration of Carbon dioxide Laser Engraver for PMMA sheets for Microchannel Fabrication',
      'authors': 'Rajib Majumder, Arindam Bit',
    },
  ],
};
final Map<String, List<Map<String, String>>> papers_9 = {
  "Multiphase Flows": [
    {
      'title': 'Modelling the melting of a core catcher plate for a Fast Reactor',
      'authors': 'Ram Kumar Maity, Rajendrakumar Murugesan, Natesan K, Madapati Sai Nikhilesh',
    },
    {
      'title': 'Fluid and pressure oscillations in a vent system during downward expulsion of air in a water pool',
      'authors': 'Thangamani I, Anu Dutta, Seik Mansoor Ali',
    },
    {
      'title': 'Numerical Study of Solidification of Thermal Energy Storage System by Varying Fin Length Ratio',
      'authors': 'Ridhi V Raaj, Amrita Sharma, Hardik Kothadia',
    },
    {
      'title': 'Experimental Investigation of sugarcane juice evaporation dynamics during jaggery production',
      'authors': 'Arvind Kumar, Hardik Kothadia',
    },
    {
      'title': 'Role of Fluid Motion in Regulation of Bone Mechanotransduction',
      'authors': 'Rakesh Kumar',
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
              "      Venue:\nLecture Hall Complex",
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
                    SessionObject(room: "LHC 307", name: session.key, papers: session.value),
                  for (var session in papers_2.entries)
                    SessionObject(room: "LHC 305", name: session.key, papers: session.value),
                  for (var session in papers_3.entries)
                    SessionObject(room: "LHC 205", name: session.key, papers: session.value),
                  for (var session in papers_4.entries)
                    SessionObject(room: "LHC 105", name: session.key, papers: session.value),
                  for (var session in papers_5.entries)
                    SessionObject(room: "LHC 204", name: session.key, papers: session.value),
                  for (var session in papers_6.entries)
                    SessionObject(room: "LHC 207", name: session.key, papers: session.value),
                  for (var session in papers_7.entries)
                    SessionObject(room: "LHC 206", name: session.key, papers: session.value),
                  for (var session in papers_8.entries)
                    SessionObject(room: "LHC 106", name: session.key, papers: session.value),
                  for (var session in papers_9.entries)
                    SessionObject(room: "LHC 304", name: session.key, papers: session.value),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'sessionobj.dart';

class D3s3 extends StatelessWidget {
  D3s3({Key? key}) : super(key: key);

  final Map<String, List<Map<String, String>>> papers = {
    "Computational Fluid Dynamics": [
      {
        'title': 'Laminar combined convection in pseudoplastic fluids from a horizontal cylinder in an adiabatic channel',
        'authors': 'Niharika Dutt, Khyati Aherwar, Preeti Suri, Swati Patel',
      },
      {
        'title': 'Numerical Study of 3D Turbulent Natural Convection Heat Transfer from a Stack of Horizontal Hollow Cylinders',
        'authors': 'Subhasisa Rath, Gloria Biswal',
      },
      {
        'title': 'Numerical investigation of opposed flame spread over cellulose-insulated copper wires in normal gravity environment',
        'authors': 'Durga Prasad Dusi, Manu B V, Kambam Naresh Meetei, Amit Kumar',
      },
      {
        'title': 'Effect of Primary and Secondary Air on Radiation Efficiency of Porous Radiant Burner',
        'authors': 'Shubham Sharma, Prabhakar Zainith, Ayush Painuly, Niraj Mishra',
      },
      {
        'title': 'Comparison of mean flow properties of a three-dimensional wall jet on convex and concave cylindrical surfaces',
        'authors': 'DVS Bhagavanulu, SVH Nagendra',
      },
    ],
  };
  
  final Map<String, List<Map<String, String>>> papers_2 = {
    "Fundamental Studies in Fluid Mechanics": [
      {
        'title': 'Evolution and interaction with a rod surface of a vortex ring in a cylindrical enclosure',
        'authors': 'Anil Lal Sadasivan',
      },
      {
        'title': 'Numerical investigation of pump intake vortex mitigation using multiple intakes',
        'authors': 'Rahul Kumar Mondal, Kanika Thakur, Parmod Kumar, Parmod Kumar',
      },
      {
        'title': 'Unsteady Fluid Flow Analysis of Afterburner with Modified V-Gutter',
        'authors': 'Dr Srinivasa Rao Gurrala, Sanjay Singh Rawat',
      },
      {
        'title': 'Modelling the Generation and Propagation of Infrasound Due to Leak in Oil & Gas Pipelines in Open FOAM',
        'authors': 'Dilshad Ahmad, Mithilesh Maurya, Prateek Singh, Hrishikesh Kulkarni',
      },
    ],
  };
final Map<String, List<Map<String, String>>> papers_3 = {
  "Multiphase Flows": [
    {
      'title': 'Quantification of Detached Mass from Corium Jet and Particle Size Distribution during FCI',
      'authors': 'Ajay Rawat, M. Chandra Kumar, A. Jasmin Sudha, V. Subramanian, B. Venkatraman',
    },
    {
      'title': 'Cost-effective high-speed imaging of droplet impact with a DSLR camera',
      'authors': 'Deependra Kumar, Santhosh SP, Abhiram Ramachandran, Adethya S Nair, Kiran Raj M, Aditya Jain, Deependra Kumar.',
    },
    {
      'title': 'Bubble distribution inside bioreactor by using PBM Model',
      'authors': 'Sachin Kumar, Raj Kumar Singh, Bahni Ray',
    },
    {
      'title': 'Coalescence Induced Bubble Departure in Microgravity: Effect of Number of Bubbles',
      'authors': 'Md. Qaisar Raza, Catherine Colin, Julien Sebilleau',
    },
    {
      'title': 'The Effect of the Particle Reynolds Number on Submarine Pipeline Scour Depth Using CFD',
      'authors': 'Mukul Chandra, Harshal Akolekar',
    },
    {
      'title': 'Ejector system for thermo-vapor compressor-based multi-effect desalination',
      'authors': 'Anoop S.L, Arun Kumar R, Hardik Kothadia',
    },
  ],
};
final Map<String, List<Map<String, String>>> papers_4 = {
  "Multiphase Flows": [
    {
      'title': 'Heat transfer characteristics in a finned-thermal energy storage system on ice-freezing process',
      'authors': 'Amrita Sharma, Ridhi V Raaj, Hardik Kothadia',
    },
    {
      'title': 'Numerical Investigation of Droplet Impacting on a Solid Surface: Effect of Droplet Shape',
      'authors': 'Arnab Chakraborty, Poorva Mondal, Karundev P, Venkata Sudheendra Buddhiraju, Venkataramana Runkana',
    },
    {
      'title': 'Numerical Simulation of Droplet Impacting on Different Rib Surfaces',
      'authors': 'Arnab Chakraborty, Poorva Mondal, Venkata Sudheendra Buddhiraju, Venkataramana Runkana',
    },
    {
      'title': 'Study of a Latent Heat Energy Storage System Using a Concentrating Solar Collector',
      'authors': 'S Shri Ram Kumar, Mallya Akshat, Srinivasan Periaswamy',
    },
    {
      'title': 'Effect of Momentum Flux and Inclination on the Circular Hydraulic Jump',
      'authors': 'Akhilesh Srivastava, K.R. Sreenivas',
    },
    {
      'title': 'The Impact of Air Velocity on the Performance of Pad Evaporative Cooling Systems',
      'authors': 'Ankitsinh Chauhan, Vimal Patel, Ashok Parekh',
    },
  ],
};
final Map<String, List<Map<String, String>>> papers_5 = {
  "Aerodynamics": [
    {
      'title': 'Analysis of Aerodynamic Characteristics for a Missile Geometry in the Supersonic and Hypersonic Flow Regimes',
      'authors': 'Bhoomika Prasad, M Ananth Padmanabha Jayahar, Sivasubramanian',
    },
    {
      'title': 'Aerodynamics of a simplified high-speed train – effect of moving ground and wheel rotation',
      'authors': 'Subhransu Roy, Mohammad Asif Sultan',
    },
    {
      'title': 'Role of Gas Models on Aerothermodynamic Heating over Double-Wedge in Hypersonic Stream',
      'authors': 'Anurag Adityanarayan Ray1, Ashoke De',
    },
    {
      'title': 'Shape Optimisation of a Hyperloop Pod To Minimise the Drag',
      'authors': 'Karandeep Singh, Kaushik M, Pushkar Sapre, Pranshu Vyas, Raaghav Dubey, Pardha S Gurubelli',
    },
    {
      'title': 'Estimation of the Flight Trajectory and Dynamic Behaviour of 120mm Guided Projectile through a Six Degree of Freedom Model',
      'authors': 'Sourabh Khambra, Dipankar Chatterjee, Bittagopal Mondal',
    },
    {
      'title': 'Aerodynamic Performance of Symmetric and Cambered Wings Under Ground and Ceiling Proximity',
      'authors': 'Ravindra Shirsath',
    },
  ],
};
final Map<String, List<Map<String, String>>> papers_6 = {
  "Turbomachinery": [
    {
      'title': 'Fluid Flow Analysis of a Mine Ventilation Axial Fan using CFD Techniques',
      'authors': 'Dr Nithesh K G, Akshay GM, Shreyas Gowda MK, Deepak KV, Gagandeep KH, Dr. Niroj Kumar Mohalik, Dr. Jai Krishna Pandey',
    },
    {
      'title': 'Insightful Perspective on Mist Film Cooling: Analysis of Turbulent Intensity and Momentum Flux',
      'authors': 'Abhishek Verma, Deepak Kumar, Debi Prasad Mishra',
    },
    {
      'title': 'Numerical Study on Film Cooling: The Influence of Vortex Near Diffused Injection Exit',
      'authors': 'Abhishek Verma, Deepak Kumar, Debi Prasad mishra',
    },
    {
      'title': 'Effect of Vane Edge shape on the Performance of Savonius Hydrokinetic Turbines',
      'authors': 'Vimal Patel, Shaikh Shehzad',
    },
    {
      'title': 'Effect of a central shaft on the performance of Darrieus Hydrokinetic Turbine',
      'authors': 'Vimal Patel, Rajashekhar Jilla',
    },
    {
      'title': 'Investigation of performance of Savonius rotor, equipped with blades having slits and capped-vents',
      'authors': 'Ath S Singhal, Rajesh N Patel, Sanjay Jain, Rohan Pathak',
    },
  ],
};
final Map<String, List<Map<String, String>>> papers_7 = {
  "Propulsion and Power": [
    {
      'title': 'Investigation of Solid-Liquid Cyclone Separator for Harvesting of Dunaliella Salina for Mass Production of Biomass',
      'authors': 'Mandeep Singh, Priyanshu Jain, Kamal Kishore Khatri',
    },
    {
      'title': 'Design and Development of a Vertical Static Thrust Bed for Solid Rocket Motors',
      'authors': 'Praneeth B V, Harsha Vardhana, Mohammed Zaidur Rahman, Jayahar Sivasubramanian',
    },
    {
      'title': 'Investigating Vortex Shedding Past a V-Gutter: Effect of Included Angle and Inlet Velocity',
      'authors': 'Shivram Pathak, Ankur Kumar, Anubhav Sinha',
    },
    {
      'title': 'Effects of the bluff body shapes on the stability limit of lean premixed CNG-air swirl flames',
      'authors': 'Noorul Huda, Keshav Yadav, Surendra Soni, Santanu De',
    },
    {
      'title': 'CFD Simulation of Rijke Tube to Understand the Thermoacoustic Instability',
      'authors': 'Subhash Kumar, Kartikkumar Thakkar, Sheshadri Sreedhara',
    },
  ],
};
final Map<String, List<Map<String, String>>> papers_8 = {
  "Miscellaneous Topics": [
    {
      'title': 'Numerical Study of Extended and Unmitigated Station Blackout in a PHWR / CANDU Spent Fuel Pool',
      'authors': 'Nilesh Agrawal, Seik Mansoor Ali, Dinakrushna Mohapatra',
    },
    {
      'title': 'Dispersion in an Urban Cross-Street Intersection',
      'authors': 'Lakhvinder Singh, Sammed Ranadive, S. Jitendra Pal',
    },
    {
      'title': 'Flow Boiling Heat Transfer in Straight Tubes at Various Orientations',
      'authors': 'Arvind Kumar, Hardik Kothadia',
    },
    {
      'title': 'Graphene Nanoplatelets Powder Versatile Applications in Electronics and Thermal Systems',
      'authors': 'Rishikant Sharma, Rana Pratap Yadav, Soumen Basu',
    },
    {
      'title': 'Comparative Evaluation of s-CO2 with Antifreeze Heat Transfer Fluids as an Application in Solar Flat Plate Collectors',
      'authors': 'Wasim Ashraf, Ramgopal Maddali, Mahendra Reddy Vanteru',
    },
  ],
};
final Map<String, List<Map<String, String>>> papers_9 = {
  "Miscellaneous Topics": [
    {
      'title': 'Numerical Study of Extended and Unmitigated Station Blackout in a PHWR / CANDU Spent Fuel Pool',
      'authors': 'Nilesh Agrawal, Seik Mansoor Ali, Dinakrushna Mohapatra',
    },
    {
      'title': 'Dispersion in an Urban Cross-Street Intersection',
      'authors': 'Lakhvinder Singh, Sammed Ranadive, S. Jitendra Pal',
    },
    {
      'title': 'Flow Boiling Heat Transfer in Straight Tubes at Various Orientations',
      'authors': 'Arvind Kumar, Hardik Kothadia',
    },
    {
      'title': 'Graphene Nanoplatelets Powder Versatile Applications in Electronics and Thermal Systems',
      'authors': 'Rishikant Sharma, Rana Pratap Yadav, Soumen Basu',
    },
    {
      'title': 'Comparative Evaluation of s-CO2 with Antifreeze Heat Transfer Fluids as an Application in Solar Flat Plate Collectors',
      'authors': 'Wasim Ashraf, Ramgopal Maddali, Mahendra Reddy Vanteru',
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
                    SessionObject(room: "LHC 305", name: session.key, papers: session.value),
                  for (var session in papers_2.entries)
                    SessionObject(room: "LHC 307", name: session.key, papers: session.value),
                  for (var session in papers_3.entries)
                    SessionObject(room: "LHC 105", name: session.key, papers: session.value),
                  for (var session in papers_4.entries)
                    SessionObject(room: "LHC 205", name: session.key, papers: session.value),
                  for (var session in papers_5.entries)
                    SessionObject(room: "LHC 206", name: session.key, papers: session.value),
                  for (var session in papers_6.entries)
                    SessionObject(room: "LHC 304", name: session.key, papers: session.value),
                  for (var session in papers_7.entries)
                    SessionObject(room: "LHC 207", name: session.key, papers: session.value),
                  for (var session in papers_8.entries)
                    SessionObject(room: "LHC 204", name: session.key, papers: session.value),
                  for (var session in papers_9.entries)
                    SessionObject(room: "LHC 106", name: session.key, papers: session.value),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'sessionobj.dart';

class D1s2 extends StatelessWidget {
  D1s2({Key? key}) : super(key: key);

final Map<String, List<Map<String, String>>> papers = {
  "Fundamental Studies in Fluid Mechanics": [
    {
      'title': 'Underwater Blast Studies Using Shock Tube',
      'authors': 'Aditya Sharma, Babalesh Kumar, Niranjan Sahoo, Vinayak Kulkarni',
    },
    {
      'title': 'Flow Field Measurements of an Elevated Circular Jet in Crossflow',
      'authors': 'Jyoti Gupta, Arun Saha',
    },
    {
      'title': 'Rayleigh-Benard Convection in a Circular Enclosure',
      'authors': 'Snehal Patil, Rajaram Lakkaraju, Krishna Priya V R',
    },
    {
      'title': 'Noise reduction in Supersonic Rectangular Jets',
      'authors': 'Revathy RK, Vignesh R, A. Nageswara Rao, Arun Kumar Perumal',
    },
    {
      'title': 'The PIV measurements of Inclined Synthetic Jet',
      'authors': 'Malkeet Singh, Kamal Raj Sharma, Arun Saha, Malkeet Singh',
    },
    {
      'title': 'Enhancement of Aerofoil Performance with the Groove for Wind Turbine Blade',
      'authors': 'Saiphaneendra Karuchola, Santhosh Kumar Achyutani, Dinesh Vagicharla, Ram Dilip Bokade',
    },
  ],
};

  final Map<String, List<Map<String, String>>> papers_2 = {
    "Computational Fluid Dynamics": [
      {
        'title': 'Effect of roughness on heat transfer in Rayleigh-Benard convection',
        'authors': 'Vinay Tripathi, Pranav Joshi',
      },
      {
        'title': 'A Comparative Assessment of Algebraic Volume of Fluid Formulations for Capturing Sharp Interfaces',
        'authors': 'Kommineni Vijay, Rahul Kumar, Prabhansu, Jyotirmay Banerjee',
      },
      {
        'title': 'Numerical flow field investigation and performance characteristics of Francis turbine',
        'authors': 'Rohit Kumar Sahu, Bhupendra Kumar Gandhi',
      },
      {
        'title': 'Investigation on temperature heterogeneity for angled placing of crates in a cold storage, during precooling',
        'authors': 'Leo Daniel Alexander, Sanjeev Jakhar, Mani Sankar Dasgupta',
      },
      {
        'title': 'Development and Validation of the Lattice Boltzmann Method based Single-Phase Flow Solver',
        'authors': 'Tejas Raval, Absar Lakdawala',
      },
      {
        'title': 'Conjugate natural convection in the presence of Cattaneo - Christov heat flux model',
        'authors': 'Manimekalai M',
      },
    ],
  };

final Map<String, List<Map<String, String>>> papers_3 = {
  "Instability, Transition and Turbulence": [
    {
      'title': 'Study on hydrodynamics and axial dispersion in an air pulsed column having a novel plate internal using Open FOAM',
      'authors': 'Anshuman Sharma, Nirvik Sen, K. K. Singh',
    },
    {
      'title': 'Thermo-hydraulic Characteristics of Helical Fins in Pipe Flow',
      'authors': 'Mayank Bhardwaj, Amit Arora',
    },
    {
      'title': 'Stability of Hypersonic Boundary Layers on Circular Cones: Effect of Nose Bluntness',
      'authors': 'Suman S Goudar, Jayahar Sivasubramanian',
    },
    {
      'title': 'Enhancement of Air Quality in Earth Tube Heat Exchangers',
      'authors': 'Mangesh Chaudhari, Om Nevkar, Onkar Wadtile, Om Kanade, Rohit Paikrao, Manasi Mogal',
    },
    {
      'title': 'Near-wall flow perturbation in turbulent natural convection',
      'authors': 'Shashikant Pawar, Manish Rane, Dhruv Panchal, Jayant Dhuri, Anand Sharma',
    },
    {
      'title': 'Transient analysis of non-premixed combustion of methane diffusion flames',
      'authors': 'Chandra Shekhar Maurya, Abhijeet Kumar',
    },
  ],
};

final Map<String, List<Map<String, String>>> papers_4 = {
  "Fluid-structure Interaction": [
    {
      'title': 'Design of Small Scale Vertical Axis Wind Turbine with Passive Blade Pitch Control',
      'authors': 'Sathyabhama A, Ramakrishna Hegde, Guhan Sidharth M',
    },
    {
      'title': 'Effect of support location on vortex-induced vibration of cantilever beam mounted circular cylinder',
      'authors': 'Deepak Kumar Rathour, Dr. Atul K Soti',
    },
    {
      'title': 'Flow-Induced Vibration of Cylinders in Tandem arrangement in the Proximity And Wake Interference Region',
      'authors': 'Sachin S B, Atul Sharma',
    },
    {
      'title': 'Influence of hemodynamics on a patient-specific middle cerebral artery bifurcating aneurysm : An FSI study',
      'authors': 'Chanikya Valeti, B. J. Sudhir, B. S. V. Patnaik',
    },
    {
      'title': 'Acoustic emission characteristics of edge modified airfoils',
      'authors': 'Aadit Narayanmurthy, S Narayanan, Sushil Kumar Singh, Swagata Bhaumik',
    },
    {
      'title': 'Impact of Unsteady Approach Angle on Vortex-Induced Vibration of a Square Cylinder',
      'authors': 'Mohd Sufiyan anwar Anwar, Saif Masood, Mohammed Athar Khan, Syed Fahad Anwer, Rashid Ali, Abdullah yusuf Usmani',
    },
  ],
};
final Map<String, List<Map<String, String>>> papers_5 = {
  "Multiphase Flows": [
    {
      'title': 'Dispersive Mixing in Axisymmetric Gravity Currents',
      'authors': 'Tarun Kumar Jain, Chunendra K Sahu',
    },
    {
      'title': 'Effect of Pipe Diameter on Wavy Flow Sub-regimes in Air- Water Horizontal Pipe Flow',
      'authors': 'Tarannum Mujawar, Jyotirmay Banerjee',
    },
    {
      'title': 'Influence of Dean number on two-phase flow characteristics in a helical coil tube',
      'authors': 'Tanuj Chauhan, Harish Pothukuchi',
    },
    {
      'title': 'Impact Dynamics of non-Newtonian drops on Superhydrophobic Surface',
      'authors': 'Man Mohan Singh Patel, Parmod Kumar',
    },
    {
      'title': 'Simulations of Shock Induced Bubble Collapse in a Newtonian Fluid',
      'authors': 'Sunder Dasika, Ratnesh Shukla',
    },
    {
      'title': 'Experimental Investigation on Determination of Optimum Filling Ratio in an Axially Grooved Heat Pipe with 16 Internal Grooves and Multiple Branches',
      'authors': 'Anand Bhatt, Sanjay Jain, Rajesh Patel, Jaimin Sachapara, Jiniyash Ranpariya',
    },
  ],
};

final Map<String, List<Map<String, String>>> papers_6 = {
  "Micro-Nano Scale Transport": [
    {
      'title': 'Substrate wettability influenced evaporative thermo-fluid-dynamics of capillary bridges',
      'authors': 'Arnov Paul, Purbarun Dhar, Apurba Roy',
    },
    {
      'title': 'Coupled two-phase flow and electrochemical modelling of alkaline water electrolyzer',
      'authors': 'Ankit Ojha',
    },
    {
      'title': 'Binary Droplet Impact on Square-Micropillared Hydrophobic Substrate',
      'authors': 'Mukesh Kumar Yadav, Nagesh D. Patil',
    },
    {
      'title': 'Two-dimensional Pulsatile Electro-Magneto-Hydrodynamic Flow in a Micropipe with Electroosmotic Effects',
      'authors': 'Apurba Roy, Arnov Paul, Vikram Kumar, Purbarun Dhar',
    },
    {
      'title': 'Electro-magneto-hydrodynamics of a more conducting confined drop than the surrounding pool',
      'authors': 'Pulak Gupta, Purbarun Dhar, Devranjan Samanta',
    },
    {
      'title': 'Droplet impact dynamics on liquid films',
      'authors': 'Manglesh Singh, Devranjan Samanta',
    },
  ],
};

final Map<String, List<Map<String, String>>> papers_7 = {
  "Propulsion and Power": [
    {
      'title': 'Numerical Study of Premixed Methane-Air Flame with Hydrogen and Steam Addition in Micro-combustors with Isothermal Walls',
      'authors': 'Niloy Sen, Sourav Sarkar, Achintya Mukhopadhyay',
    },
    {
      'title': 'Computational investigation on scramjet combustor with dual-strut and cavity-based model',
      'authors': 'Dinesh Kumar Bajaj, Krishna Reddy Kandula, Sakshi kansara, Devabrata Sahoo, Ashish Vashishtha',
    },
    {
      'title': 'Soot formation in porous radiant burner for fuel rich–air mixtures',
      'authors': 'Anirudh Singh, SnehasishPanigrahy',
    },
    {
      'title': 'Exergy Analysis of stratification effects on syngas autoignition using 2D Direct Numerical Simulation',
      'authors': 'Rahul Patil, Sheshadri Sreedhara',
    },
    {
      'title': 'A TGA-MS Study of Ammonium Perchlorate Decomposition in Presence of Copper Chromite',
      'authors': 'Shani Saha, Arindrajit Chowdhury, Neeraj Kumbhakarna',
    },
    {
      'title': 'Estimation of the Triple Wiebe Function Parameters for the Transition-Point-Based Identification of Combustion Stages',
      'authors': 'Kartikkumar Thakkar, Sheshadri Sreedhara',
    },
  ],
};
final Map<String, List<Map<String, String>>> papers_8 = {
  "Miscellaneous Topics": [
    {
      'title': 'Application of Machine Learning in Heat Conduction through a Body of Heterogeneous Material',
      'authors': 'Omkar Ojas Kanade, Mrinal Manoj, Nirav Shah, Jyotirmay Banerjee',
    },
    {
      'title': 'Magneto Rheological Fluid Devices for Automotive Applications',
      'authors': 'Manoj Paul',
    },
    {
      'title': 'Rheological Analysis and Stability of Emulsions in Petroleum Engineering',
      'authors': 'Stuti Dubey, Subrata Kumar Majumder',
    },
    {
      'title': 'Experimental Investigations on gasification abilities of high ash Indian coals and press mud blends in a Fluidised Bed Gasifier',
      'authors': 'Ankit Kumar, Rakesh Kumar, Prakash D Chavan',
    },
    {
      'title': 'Prediction of pressure drop and flow distribution in a porous plate including the influence of elbows on either side for a liquid sodium loop',
      'authors': 'Mudivarthy Tulasi Vardhani, Nandakumar R',
    },
    {
      'title': 'Computational Fluid Dynamic Analysis of Thermal Management for Li-Ion Battery Pack Using NTGK Model',
      'authors': 'Mahesh N Malage, Pankaj Nadge, Suvankar Manna',
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
                    SessionObject(room: "LHC 304", name: session.key, papers: session.value),
                  for (var session in papers_4.entries)
                    SessionObject(room: "LHC 207", name: session.key, papers: session.value),
                  for (var session in papers_5.entries)
                    SessionObject(room: "LHC 105", name: session.key, papers: session.value),
                  for (var session in papers_6.entries)
                    SessionObject(room: "LHC 204", name: session.key, papers: session.value),
                  for (var session in papers_7.entries)
                    SessionObject(room: "LHC 206", name: session.key, papers: session.value),
                  for (var session in papers_8.entries)
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
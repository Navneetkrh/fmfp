import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'sessionobj.dart';

class D2s1 extends StatelessWidget {
  D2s1({Key? key}) : super(key: key);

  final Map<String, List<Map<String, String>>> papers = {
    "Fundamental Studies in Fluid Mechanics":
     [
      {
        'title': 'The Effect of Nozzle Geometry on Heat Transfer Distribution in High speed Air Jet Impingement',
        'authors': 'Laxmikant Dhruw, Sana Ansari, Hardik Kothadia',
      },
      {
        'title': '2D Wake Transition of a NACA 0012 Airfoil in Soap Film',
        'authors': 'Harish Wathore, Kamal Poddar, Alakesh Chandra Mandal',
      },
      {
        'title': 'The Effect of Shock Wave Boundary Layer Interaction on Leading-Edge Wall Temperature',
        'authors': 'Vinoth Kumar P, Jayaprakash N Murugan',
      },
      {
        'title': 'Prediction of Heat Transfer and Ablation in Hypersonic Flows using a Fluid-Thermal-Ablation Coupling Model',
        'authors': 'Bindu Kumar, Harshitha L R, Srikari S, Jayahar Sivasubramanian',
      },
      {
        'title': 'Transonic Shock Boundary Layer Interaction over SHM-1 and Modified SHM-1 Airfoil',
        'authors': 'Manideep Reddy Seelam, Aryaman Sachdeva, Srijna Singh, Mohammad Danish',
      },
    ],
  };

  final Map<String, List<Map<String, String>>> papers_2 = {
    "Computational Fluid Dynamics": [
      // Existing papers...
      {
        'title': 'A Sharp Interface Immersed Boundary Method for Three-Dimensional Flow Past Moving Boundaries',
        'authors': 'Mahesh Sawardekar, Ratnesh Shukla',
      },
      {
        'title': 'Evaluation of Physics-informed Machine Learning Approach for Computation of Fluid Flows',
        'authors': 'Prashant Kumar, Rajesh Ranjan',
      },
      {
        'title': 'Performance Evaluation of Solar Air Heater Duct with Inverted Y-Shaped Ribs: A numerical exercise',
        'authors': 'Monalisha Swain, Arnab Mukherjee',
      },
      {
        'title': 'Code Verification of User Defined Functions and Mesh Sensitivity Analysis on Derived Quantities in Steady Flows through Cannula',
        'authors': 'Siddharth Nagarajan, Christopher Basciano, Siva Balasubramanian, Shelby Bieritz, Nathan Spangenberg',
      },
      {
        'title': 'Numerical Modelling of Flame Characteristics of Radially Slotted Methane Burner',
        'authors': 'V. Pradeep, S. Raja, Ashish Mittal, Alok Deshpande, Prafull Gandhi, Ketan S. Parashar, Vasudevan Raghavan',
      },
    ],
    // Add more sessions here
  };

final Map<String, List<Map<String, String>>> papers_3 = {
  "Computational Fluid Dynamics": [
    // Existing papers...
    {
      'title': 'Computational Modeling of Snow Avalanche Dynamics: A case study of Teling Nala near Atal Tunnel',
      'authors': 'Gaurav Bhutani, Vishal Sharma',
    },
    {
      'title': 'Exploring Free Convection Heat Transfer over a Cylindrical Geometry with Irregular Shape: A Numerical Study',
      'authors': 'Sachindra Rout, Shafiq Mohamad, Sunil Sarangi, Jnana Senapati',
    },
    {
      'title': 'Shape optimization for drag reduction in flow past a circular cylinder in the unsteady laminar regime',
      'authors': 'Prashant Kumar, Di Chen, Vivek Kumar, Yosuke Hasegawa',
    },
    {
      'title': 'Impact of Economiser Tube Geometry on Water Heating',
      'authors': 'Soham Londhe, Kaustubh Shinde, Smit Ambhore, Varsha Auti, Dr Pramo Kothmire',
    },
    {
      'title': 'Experimental and Numerical Analysis of Plate Heat Exchanger by Optimizing the Cooling Effect for Plates',
      'authors': 'Satyam Lomate, Pratik Bendre, Gargi Pathare, Dr Pramod Kothmire, Akshata Salunke',
    },
  ],
  // Add more sessions here
};

final Map<String, List<Map<String, String>>> papers_4 = {
  "Fluid-structure Interaction": [
    // Existing papers...
    {
      'title': 'Vortex-induced vibration of a transversely rotating sphere with three degrees of freedom',
      'authors': 'Sandip Sarkar, Arnab Kumar De',
    },
    {
      'title': 'Experimental Study to Explore Acoustic Characteristics of a Supersonic Chevron Nozzle',
      'authors': 'Shankar Mahadevan, Devanathan D, Pratheek VVH, Kailash R, Manikandan K, Rajarshi Das',
    },
    {
      'title': 'Smoothed Particle Hydrodynamics study of Malfunctioned Mechanical Heart Valve',
      'authors': 'Sumanta Laha, Georgios Fourtakas, Prasanta Kumar Das, Amir Keshmiri',
    },
    {
      'title': 'An effective model for flow over hairy surfaces',
      'authors': 'Vedanth Narayan Kuchibhotla, Y Sudhakar',
    },
    {
      'title': 'Controlling Flows Around A NACA0012 Using Piecewise Surface Morphing',
      'authors': 'Saif Masood, Syed Fahad Anwer, Faiz Mohd, Mohd Naved, Mohd Naved',
    },
  ],
  // Add more sessions here
};
final Map<String, List<Map<String, String>>> papers_5 = {
  "Multiphase Flows": [
    // Existing papers...
    {
      'title': 'Viscous flow through high permeable channel in porous media',
      'authors': 'Anoop Rathore, Chunendra K Sahu',
    },
    {
      'title': 'Experimental investigation of the evolution of dense plumes in porous media using dye attenuation technique',
      'authors': 'Chetan Raturi, Sibasish Panda, Chunendra K Sahu',
    },
    {
      'title': 'Thermal Performance Evaluation of High-Concentration Photovoltaic Cells through PCM-Enhanced Water Cooling in Ribs Microchannels',
      'authors': 'Piyush Upadhyay, SHAILJA SHUKLA',
    },
    {
      'title': 'Experimental investigation of the percolation behavior of fine particles through porous media',
      'authors': 'Garima, Anurag Tripathi, Chunendra K Sahu',
    },
    {
      'title': 'Effect of Dual Porosity on Flow Properties and Immiscible Displacements: A Pore-scale Numerical Investigation',
      'authors': 'Rupak Bhowmik, Anugrah Singh',
    },
  ],
  // Add more sessions here
};

final Map<String, List<Map<String, String>>> papers_6 = {
  "Micro-Nano Scale Transport": [
    // Existing papers...
    {
      'title': 'Thermocapillary transport in oil-water micro-films due to patterned wall heater',
      'authors': 'Shubham Agrawal, Purbarun Dhar',
    },
    {
      'title': 'Development of negative gauge pressure demountable Gasketed Vapour Chamber',
      'authors': 'Amit Arora, Mohan Kumar, Swapnil Chitnis, Ram Dayal',
    },
    {
      'title': 'Effect of Surface Acoustic Wave on the Thickness Profile of an Evaporating Thin Film Meniscus using Reflectometry',
      'authors': 'Pawan Kumar Singh, Saumya Singh, Soubhik Kumar Bhaumik, Subramania Narayan',
    },
    {
      'title': 'Effect of Axial Back Conduction in a Zig-Zag Oriented Microchannel',
      'authors': 'Manoj Kumar Moharana, Jyoti Ranjan Mohapatra, Abhisek Pandia',
    },
    {
      'title': 'Numerical Investigation of Flow and Residence Time Distribution in Serpentine Microchannels',
      'authors': 'Nishit Pachpande, Naren PR, Binayak Lohani',
    },
  ],
  // Add more sessions here
};
final Map<String, List<Map<String, String>>> papers_7 = {
  "TurboMachinery": [
    // Existing papers...
    {
      'title': 'Design and prototyping of low-cost open circuit subsonic wind tunnel for educational purposes',
      'authors': 'Anubhav Mishra, Neha Chaturvedi, Arvind Kumar Pandey',
    },
    {
      'title': 'Effect of Crossflow during Jet Impingement on Flat and Curved Surfaces',
      'authors': 'Gogada Suresh, Shruti Sadhna, Alankrita Singh, Sushanta Dutta',
    },
    {
      'title': 'Effect of Endwall Contouring on the Flow inside a Transonic Axial Turbine Stage',
      'authors': 'Dhiman Chatterjee, Pitchai Pillai Sharmila',
    },
    {
      'title': 'Investigation on Impact of Runner Blade Blockage on the Performance of Low Head Francis Turbines',
      'authors': 'Chandraketu Khunt, Rajavamsi Gangipamula, Chetan Patel, Haresh Patel',
    },
  ],
  // Add more sessions here
};
final Map<String, List<Map<String, String>>> papers_8 = {
  "Propulsion and Power": [
    // Existing papers...
    {
      'title': 'Numerical Analysis of Oxygen Rich Hot Gas Disposal during Ground Test of Semi-cryogenic Engine Subsystem',
      'authors': 'Anant Singhal, T John Tharakan, S Sunil Kumar, Deepak kumar Agarwal',
    },
    {
      'title': 'Influence of Spray Quality on Flame Lift-off and Lean Blowout Condition of Swirl Stabilized Burner',
      'authors': 'Dr. Muthuselvan G, Muralidhara HS, Jeyaseelan AR, Rajeshwari N, Sundararajan T',
    },
    {
      'title': 'LES Modelling of Co-Firing of Ammonia and Pulverized Coal Using Three Mixture Fraction Adiabatic and Non-Adiabatic Flamelet Progress Variable Approaches',
      'authors': 'Sujeet Yadav, Hiroaki Watanabe',
    },
    {
      'title': 'Effect of hydrogen addition on the Thermal performance of self-aspirating methane gas domestic burners',
      'authors': 'Prathap Chockalingam, Krishnanunni M.S., Rajesh Natarajan, Sobodh Purohit, Ibha Kalita, Senthil Murugan S',
    },
    {
      'title': 'Thermal Analysis of MSBL Target Holder Cooling in DAE Medical Cyclotron Facility',
      'authors': 'Brindaban Ghosh, Pranab Bhattacharyya, Anjan Dutta Gupta',
    },
  ],
  // Add more sessions here
};
final Map<String, List<Map<String, String>>> papers_9 = {
  "Miscellaneous Topics": [
    // Existing papers...
    {
      'title': 'Flow and heat transfer of micropolar fluid in porous medium existing between parallel solid plates',
      'authors': 'Alpana Srivastava',
    },
    {
      'title': 'Experimental Thermo-Hydraulic Investigation on Packed Bed Thermal Energy Storage System using Phase Change Material',
      'authors': 'A. Surya, Prakash Ramasamy',
    },
    {
      'title': 'Development of an Accumulator-based Energy Regenerative Technology for the Hydraulic Swing Mechanism of an Excavator Machine',
      'authors': 'Dr. Ajit Kumar, Shubhyanshu Singh',
    },
    {
      'title': 'Analysing the performance behaviour of various man transport systems used in mining operations',
      'authors': 'Dr. Ajit Kumar,Shubhyanshu Singh, Shatrughan Thakur',
    },
    {
      'title': 'Analysis of High Concentration Slurry Pipe Distribution Network using EPANET',
      'authors': 'Ankit Prakash, Dr. Anubhav Rawat, Dr. Anubhav Rawat',
    },
  ],
  // Add more sessions here
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
                    SessionObject(room: "LHC 304", name: session.key, papers: session.value),
                  for (var session in papers_3.entries)
                    SessionObject(room: "LHC 305", name: session.key, papers: session.value),
                  for (var session in papers_4.entries)
                    SessionObject(room: "LHC 205", name: session.key, papers: session.value),
                  for (var session in papers_5.entries)
                    SessionObject(room: "LHC 105", name: session.key, papers: session.value),
                  for (var session in papers_6.entries)
                    SessionObject(room: "LHC 204", name: session.key, papers: session.value),
                  for (var session in papers_7.entries)
                    SessionObject(room: "LHC 207", name: session.key, papers: session.value),
                  for (var session in papers_8.entries)
                    SessionObject(room: "LHC 206", name: session.key, papers: session.value),
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
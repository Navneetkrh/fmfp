import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'sessionobj.dart';

class D1s3 extends StatelessWidget {
  D1s3({Key? key}) : super(key: key);

final Map<String, List<Map<String, String>>> papers = {
  "Measurement Techniques in Fluid Flows": [
    {
      'title': 'Characterization of Injector aero dynamics in lean burn micro gas turbine engine combustors',
      'authors': 'Vikash Garg, Preetam Jamod, Vivek Sahu, Prashant Singh, Shanmugadas K. P.',
    },
    {
      'title': 'Experimental Investigation of aerodynamics in a fuel-flex gas turbine injector',
      'authors': 'Prashant Singh, Amit Rajput, Abhishek Verma, Preetam Jamod, Shanmugadas K P',
    },
    {
      'title': 'Free-stream turbulence impinging on flow inside a T106A low pressure turbine cascade',
      'authors': 'Nivedita Gupta, Aditi Sengupta',
    },
    {
      'title': 'Design and development of atomiser for Particle Image Velocimetry',
      'authors': 'Swapnil Raut, Souvik Dasgupta, Vinoy Vadukut, Manaswita Bose',
    },
    {
      'title': 'How does the placement of an acoustic source influence a drop’s evaporation?',
      'authors': 'Aadil Kureshee, S. Narayanan, Deepak Kumar Mandal',
    },
    {
      'title': 'Study of Radial Non-Uniformity in a Liquid-Solid Circulating Fluidized Bed using Digital Image Processing-MATLAB®',
      'authors': 'Karan Sarpal, Tanishq Pathak, Aleena Thomas, Anjali Sethumadhavan, Manali Mahendra Barve, Nirmala Gnanasundaram',
    },
  ],
};

  final Map<String, List<Map<String, String>>> papers_2 = {
    "Computational Fluid Dynamics": [
      {
        'title': 'Conjugate heat transfer modeling of mixed convection using an off-lattice Boltzmann method',
        'authors': 'Kuldeep Tolia, Kameswararao Anupindi',
      },
      {
        'title': 'Comparative study of numerical simulation of vortex shedding on cylinder of different configurations',
        'authors': 'Mariyam Ali',
      },
      {
        'title': 'Prediction of Cricket Ball Movement using Navier-Stokes Equations in Computational Fluid Dynamics',
        'authors': 'Rishi Pandey, Abhijeet K. Digalwar',
      },
      {
        'title': 'Numerical study on a heated rough rotating cylinder immersed in confined aqueous nanofluids',
        'authors': 'Pooja Thakur, Shruti Gautam, Aruna Thakur',
      },
      {
        'title': 'An improved cell-centered nodal integral approach for the transient diffusion equation',
        'authors': 'Nadeem Ahmed, Uma Siva Sankar Kompalli, Suneet Singh',
      },
      {
        'title': 'Investigation of Natural Convection in Square Cavity Implementing non-Boussinesq Approximation',
        'authors': 'Shikha Bhuyan, Dipankar Narayan Basu Basu, Sambit Mazumdar',
      },
    ],
  };

final Map<String, List<Map<String, String>>> papers_3 = {
  "Instability, Transition and Turbulence": [
    {
      'title': 'Numerical Investigation of the Role of Atwood Number in Rayleigh-Taylor Instability',
      'authors': 'Urvi Mehta, Jayahar Sivasubramanian',
    },
    {
      'title': 'Experimental and Numerical Study on Instability of Gravity driven Shear thinning fluid',
      'authors': 'Shanmugam V, Vikash Vashisth, Senthilmurugan Subbiah',
    },
    {
      'title': 'Magnetohydrodynamic Instability in Aluminium Reduction Cells',
      'authors': 'Amit Jha, Avishek Ranjan, Amit Gupta, Shyam Karagadde',
    },
    {
      'title': 'Numerical Study of Flame Stabilization Mechanisms in Turbulent Bluff Body Combustor',
      'authors': 'Sunil Jatoliya, Mayur Vadoliya, Ankit Dekhatawala, Nikhil A. Baraiya, Rupesh Shah',
    },
    {
      'title': 'Effect of the Rib Size and Location on Heat Transfer Performance of the Synthetic Jet: A Numerical Study',
      'authors': 'Zenkumar Kapadiya, Dnyanesh Mirikar, Rajat Kumar, Harekrishna Yadav',
    },
    {
      'title': 'Heat Transfer Behavior of the Acoustically Generated Pulsating Air Jet Impingement on a Flat Surface',
      'authors': 'Dnyanesh Mirikar, Pawan Sharma, Harekrishna Yadav',
    },
  ],
};

final Map<String, List<Map<String, String>>> papers_4 = {
  "Multiphase Flows": [
    {
      'title': 'Numerical prediction of cavitation in NACA 65-021 hydrofoil',
      'authors': 'Pallav Sahu, Rahul Goyal, P. M. V. Subbarao',
    },
    {
      'title': 'Numerical Modeling of Droplet Behavior in Fluid Flow: Insights into Collision Efficiency through Stokes Number',
      'authors': 'Pradyumna Das, Ranjan Ganguly, Ashoke De',
    },
    {
      'title': 'Comprehensive Investigation of a Four-Pass Latent Heat Thermal Energy Storage System with Different Geometric and Flow Configurations: A Numerical and Experimental Analysis',
      'authors': 'Jaideep Shukla, Pushpendra Kumar Shukla, Ketan Arora, P. Anil Kishan',
    },
    {
      'title': 'Aerodynamic rupture of bulged liquid sheet',
      'authors': 'Sidyant Kumar, Sudama Bhati, D Chaitanya Kumar Rao, Sachchida Nand Tripathi, Sanjay Kumar',
    },
    {
      'title': 'Behavior of a Freely Rising Sphere Close to the Point of Release in a Newtonian Fluid',
      'authors': 'Suryadev Pratap Singh, Harish N. Mirajkar, K. R. Sreenivas, Jaywant Arakeri',
    },
    {
      'title': 'Three-Dimensional Simulation of a Droplet Impacting a Solid Surface',
      'authors': 'Umesh, Nirmal Singh',
    },
  ],
};
final Map<String, List<Map<String, String>>> papers_5 = {
  "Bio-Fluid Mechanics": [
    {
      'title': 'Rheotactic motion of a microswimmer near a slippery wall',
      'authors': 'Soumyajit Ghosh, Antarip Poddar',
    },
    {
      'title': 'Gravitational orientation of airways affect particle deposition in lungs',
      'authors': 'Shouvik Ghorui, Debjit Kundu, Mahesh V. Panchagnula, Aranyak Chakravarty',
    },
    {
      'title': 'Fluid Structure Acoustic Interaction for Phonoangiography-based Diagnosis and Rupture Prediction of Abdominal Aortic Aneurysm',
      'authors': 'Sumant R Morab, Janani S Murallidharan, Atul Sharma',
    },
    {
      'title': 'The effect of stenosis on left anterior descending coronary artery hemodynamics',
      'authors': 'Mudrika Singhal, Raghvendra Gupta, Bishwajeet Saikia, Amit Malviya, Amitav Sarma, Pranjal Phukan',
    },
    {
      'title': 'Effect of Eccentricity on Pulsatile Blood Flow through Stenosed Carotid Artery',
      'authors': 'Swapnil Rajmane, Shaligram Tiwari',
    },
    {
      'title': 'Hemodynamic analysis of local coil packing density in an anterior communicating artery aneurysm using porous medium approach',
      'authors': 'Nisanth Kumar Panneerselvam, B.J. SUDHIR, SANTHOSH K. KANNATH, B.S.V. PATNAIK',
    },
  ],
};
final Map<String, List<Map<String, String>>> papers_6 = {
  "Turbomachinery": [
    {
      'title': 'Numerical Simulation of Drag cum Lift Horizontal Axis Wind Turbine',
      'authors': 'Nandan Kumar, Bakhshi Mehul, Rakesh Aggarwal, Abhilash Anand, Pritanshu Ranjan',
    },
    {
      'title': 'Modification of the performance characteristic of an existing industrial pump through the manipulation of impeller exit area',
      'authors': 'Sandipan Trivedi, Himadri Sen, Tanishk Kumar, Prasanta Das',
    },
    {
      'title': 'Numerical Investigation of Aerodynamics and Aeroacoustics Performance of a Centrifugal Blower',
      'authors': 'Zaid Paloba, Jayahar Sivasubramanian',
    },
    {
      'title': 'Improving the Net Nead of Reaction Turbine by Tailrace Redesign',
      'authors': 'Mahesh Kurulekar, Krishnaswamy Kumar, Shardul Joshi',
    },
    {
      'title': 'Economic Analysis of Pump as Turbine Operating Under Erosive Environment',
      'authors': 'Roshan Tandel, Dr. Rajesh N Patel, Sanjay Jain',
    },
    {
      'title': 'AI-enabled condition monitoring for a wind energy conversion system -VAWT',
      'authors': 'Dr. Karthik Selva Kumar, Karuppasamy, Brintha R, Aruna Devi K, Krishna Kumar Jaiswal, Sangmesh B, Suresh A, Veera Venkata Kiran Krishna Boggavarapu',
    },
  ],
};

final Map<String, List<Map<String, String>>> papers_7 = {
  "Miscellaneous Topics": [
    {
      'title': 'A numerical study on the effects of vertical perforated inlet baffles in a circular wastewater sedimentation tank',
      'authors': 'Kirpa Hirom',
    },
    {
      'title': 'CFD Simulation of an Ebullated Bed Reactor with Internal Recycle',
      'authors': 'Mohit Shah, S. Pushpavanam',
    },
    {
      'title': 'Analysis of the effect of baffles on the settling efficiency of a sedimentation tank by Computational Fluid Dynamics',
      'authors': 'Mk Raeesh',
    },
    {
      'title': 'Boundary condition-based Machine Learning algorithm for incompressible viscous flows',
      'authors': 'Rachakonda Naga Sai Prakash, Niranjan Sahoo, Tapan Mankodi',
    },
    {
      'title': 'Computational Study of Longitudinal Serrations in Internal Flows for Reduced Thermal Resistance',
      'authors': 'Mayank Bhardwaj, Amit Arora',
    },
    {
      'title': 'Effect of Carrier Fluid Viscosity and Particle Concentration on Stability of Magnetorheological Fluid',
      'authors': 'Hiren Prajapati, Absar Lakdawala',
    },
  ],
};
final Map<String, List<Map<String, String>>> papers_8 = {
  "Miscellaneous Topics": [
    {
      'title': 'Comparative analysis of independent metering and digital directional valve-controlled power actuator system using simulation study',
      'authors': 'Sumit Kumar, Ajit Kumar',
    },
    {
      'title': 'Numerical Investigation of Electrode Positioning in the Onsager-Wien Effect Assisted Minichannel Heat Sink',
      'authors': 'R. Vishnu, S Vengadesan, Darshan Patel',
    },
    {
      'title': 'Optimization and energy-exergy comparison of conventional modifications in ORC technology for electricity generation',
      'authors': 'Mayank Srivastava',
    },
    {
      'title': 'Numerical Study of Helical Fin for Capacity Augmentation of Tube-in-Tube Heat Exchanger',
      'authors': 'Mayank Bhardwaj, Amit Arora',
    },
    {
      'title': 'Investigation of the hydraulically operated fan drive cooling system of the HEMM',
      'authors': 'Rakesh Kumar Nayak, Naveen Kumar, Jayanta Das',
    },
    {
      'title': 'Drop impact on superhydrophobic surfaces: Comparison of maximum spreading, contact time, and coefficient of restitution',
      'authors': 'Kumar Gaurav',
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
                    SessionObject(room: "LHC 206", name: session.key, papers: session.value),
                  for (var session in papers_4.entries)
                    SessionObject(room: "LHC 105", name: session.key, papers: session.value),
                  for (var session in papers_5.entries)
                    SessionObject(room: "LHC 304", name: session.key, papers: session.value),
                  for (var session in papers_6.entries)
                    SessionObject(room: "LHC 207", name: session.key, papers: session.value),
                  for (var session in papers_7.entries)
                    SessionObject(room: "LHC 204", name: session.key, papers: session.value),
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
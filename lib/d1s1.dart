import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'sessionobj.dart';

class D1s1 extends StatelessWidget {
  D1s1({Key? key}) : super(key: key);

  final Map<String, List<Map<String, String>>> papers = {
    "Fundamental Studies in Fluid Mechanics": [
      {
        'title': 'Numerical Investigation of Onset of Natural Convection in a Skewed Cavity',
        'authors': 'Akash Jadhav, Devendra Raut, Vilas Kalamkar',
      },
      {
        'title': 'Experimental Studies on Falling Film Thickness Measurement on Inclined Plates with And Without Surface Modification',
        'authors': 'Naresh Chandora, Advaith Sankar, Annamalai Mani',
      },
      {
        'title': 'Fluid Flow and Vortex Structure in a Lid-Driven Cavity Filled with Magnetic Fluid',
        'authors': 'Prakash Verma, Manab Kumar Das',
      },
      {
        'title': 'Elevated liquid jet injection in supersonic crossflow',
        'authors': 'Ramana Kukkarasi, Chandrasekhar Medipati, Sivakumar Deivandren, Raghuraman N. Govardhan',
      },
      {
        'title': 'Shock mitigation using a wire mesh placed outside the shock tube',
        'authors': 'Rijin Rajan, Asit Kumar Sahoo, Mohd Javed, Kamal Poddar, Debopam Das Rijin Rajan',
      },
      // Add more papers for this session here
    ],
    // Add more sessions here
  };

  final Map<String, List<Map<String, String>>> papers_2 = {
    "Computational Fluid Dynamics": [
      {
        'title': 'Numerical investigations on noise reduction in heat pump using a muffler with simple expansion chamber, radial baffles and perforated pipe configurations',
        'authors': 'Chirag Vaghela, Prabhansu, Purnanand Bhale',
      },
      {
        'title': 'Performance analysis of Ranque Hilsch vortex tube varying L/D ratio and number of nozzles: -A computational Approach.',
        'authors': 'Avijit Nayak, Biranchi Narayana Padhi',
      },
      {
        'title': 'Numerical Investigations on Optimum Water Mist Droplet Size for Pool Fire Extinguishment',
        'authors': 'Bathina Siva Kumar, Gaurav Srivastava',
      },
      {
        'title': 'Heat transfer characteristics of laminar dual jets using an off-lattice Boltzmann method',
        'authors': 'Kiran Sivadas, Kameswararao Anupindi',
      },
      {
        'title': 'A RANS study of a parallel jet attaching onto a moving wall',
        'authors': 'Lalit Patil, Kameswararao Anupindi, Priyesh Kakka',
      },
      {
        'title': 'Numerical simulation of natural convection in a cavity containing a hot block using Cattaneo-Christov model',
        'authors': 'Muthumeena Ramar',
      },
      // Add more papers for this session here
    ],
    // Add more sessions here
  };

final Map<String, List<Map<String, String>>> papers_3 = {
  "Fluid Structure Interaction": [
    {
      'title': 'Vortex-Induced Vibrations of a cylinder with a flexible splitter plate',
      'authors': 'Chiranjeevi Sadana, Sanjay Kumar Shukla, Raghuraman N Govardhan',
    },
    {
      'title': 'Aeroacoustics Analysis of Military Style Supersonic Chevron Nozzle',
      'authors': 'Alwin Thomson A, Manikandan K, Manikandan K, Rajarshi Das, Rajarshi Das, Srinivasa Narasimman V B, Srinivasa Narasimman V B, Srinivasa Narasimman V B',
    },
    {
      'title': 'Wake-Induced Vibration of a Sphere in a Channel versus Free-Stream',
      'authors': 'Abhishek Thakur, Atul Sharma, Sandip Saha',
    },
    {
      'title': 'Unsteady Wake Characteristics of Elastically Mounted Circular Cylinder at Re = 150',
      'authors': 'Shristi Singh',
    },
    {
      'title': 'Control of wind velocity inside the slot-type opening of the tall buildings for harvesting the wind energy',
      'authors': 'Amlan Kumar Bairagi',
    },
    {
      'title': 'Effects of non-Newtonian blood viscosity in the realistic doubly bifurcated iliac artery',
      'authors': 'Digamber Singh, Rishi Kumar, K. Muralidhar',
    },
    // Add more papers for this session here
  ],
  // Add more sessions here
};

final Map<String, List<Map<String, String>>> papers_4 = {
  "Multi Phase Flows": [
    {
      'title': 'Preliminary Studies on Unsteady Fragmentation of Thin Films Relevant to the Coughing Phenomena',
      'authors': 'Shatrughan Jaiswal, Hrishikesh Gadgil, Sudarshan Kumar',
    },
    {
      'title': 'Thermocapillary migration of a biofluid droplet',
      'authors': 'Antarip Poddar, Vishnu Teja Mantripragada',
    },
    {
      'title': 'The Effect of Microfin Orientation in Fluid Flow and Heat Transfer in Microchannel Heat Sink',
      'authors': 'Rohit Kumar, Abhipsa Das, Manmohan Pandey',
    },
    {
      'title': 'Study of Bubble Dynamics and Heat Transfer during Nucleate Pool Boiling',
      'authors': 'Aaditya Rawat, Neeraj Kumar, Akash Asokan, Himanshu Porwal, Ram Dayal',
    },
    {
      'title': 'Effect of Time Relaxation Coefficient of Lee’s Model in Numerical Simulation of Two Phase Flow',
      'authors': 'Jaymeen Patel, Tino S, Kameswararao Anupindi',
    },
    {
      'title': 'Thermal insights into evaporation-induced deposition in 1M NaCl and MgSO4 droplets',
      'authors': 'Shivani Chauhan, Navneet Kumar',
    },
    // Add more papers for this session here
  ],
  // Add more sessions here
};
final Map<String, List<Map<String, String>>> papers_5 = {
  "Micro-Nano Scale Transport": [
    {
      'title': 'Influence of End Wall and Side Wall Arrangements of Vortex Generators on the Thermo-hydraulic Performance of a Microchannel Heat Sink',
      'authors': 'Aseel Ahmed A K, Avinash Kumar R, Naresh R, Ajith J, Aravind B',
    },
    {
      'title': 'A Phase Field Model for viscosity induced droplet splitting phenomenon at a T-junction microchannel.',
      'authors': 'Joy Mandal, Sandip Sarkar',
    },
    {
      'title': 'Analysis of Thermally Developing Electroosmotic and Pressure Driven Simplified Phan –Thien -Tanner Fully Developed Fluid Flow for High Zeta Potential in Microchannel',
      'authors': 'Tripti Kumbalpuri, Sandip Sarkar',
    },
    {
      'title': 'Investigating the Effect of Zeta Potential on Electroosmotic and Pressure Driven Viscoelastic Fluid Flow in Microchannel.',
      'authors': 'Aditya Kyawal',
    },
    {
      'title': 'Effects of magnetic field on nanofluid flow in an oblique finned microchannel',
      'authors': 'Achintya Kambli, Prasenjit Dey',
    },
  ],
};

final Map<String, List<Map<String, String>>> papers_6 = {
  "Aerodynamics": [
    {
      'title': 'Analysis of Aerodynamic Characteristics of Wing with Fence',
      'authors': 'V. Prasanna Vasan, S. Nadaraja Pillai Karthik Vel E, Lakshmi Balaji.S',
    },
    {
      'title': 'Effect of Angle of Attack on 3D Flapping Wing Simulation Using Discrete Vortex Method',
      'authors': 'V. Prasanna Vasan, S. Nadaraja Pillai Karthik Vel E, Lakshmi Balaji.S',
    },
    {
      'title': 'Mean aerodynamic flow field of an impinging jet issuing from a convergent nozzle at different inlet pressure',
      'authors': 'Bharatkrishnan I, sanjoy kumar saha, Atri Bandyopadhyay, Tapas Kumar Nag',
    },
    {
      'title': 'Numerical Study on Flow Through Gas Turbine Combustor Diffuser',
      'authors': 'Sayan Patra, Shanmugadas K. P.',
    },
    {
      'title': 'Optimization and Benchmarking of Twin VAWT Configurations Using Taguchi and Data Envelopment Analysis',
      'authors': 'Vishnu Namboodiri V, RAHUL GOYAL',
    },
    {
      'title': 'Performance Enhancement of Savonius Bach Wind Turbine Rotor using Axisymmetric Omnidirectional Deflector with Variation in Outer Plate Diameter',
      'authors': 'Shivam Singh Tomar',
    },
  ],
};

final Map<String, List<Map<String, String>>> papers_7 = {
  "TurboMachinery": [
    {
      'title': 'Effect of Blended Blade and End-wall Technique on Diffuser and Stage Performance of Highly Loaded Centrifugal Compressor',
      'authors': 'Gopi B S, S Parimalamurugaveni',
    },
    {
      'title': 'Hydro Power Screw Technology for Economic Development of Low Head and Ultra Low Head Hydro Power Sites – An Indian Perspective',
      'authors': 'Durgesh Tiwari, Deepak Pillai',
    },
    {
      'title': 'Numerical Investigation of the Vortex Breakdown Phenomenon during Transient Operation of a Model Francis Turbine',
      'authors': 'Rahul Goyal, Faiz Azhar Masoodi, Saeed Salehi',
    },
    {
      'title': 'Evaluation of a physics-based wind turbine wake growth rate model and a velocity deficit model using large eddy simulations',
      'authors': 'Aryam Sharma, Naveen N. Kethavath, Niranjan Ghaisas',
    },
    {
      'title': 'Conjugate heat transfer analysis of an array of staggered pin fins placed in a converging channel',
      'authors': 'Gouri Sankar Pattanaik, Kameswararao Anupindi',
    },
    {
      'title': 'Influence of leading edge in radial flow pump impeller',
      'authors': 'Christopher Stephen, Kumaraswamy Sivasailam',
    },
  ],
};
final Map<String, List<Map<String, String>>> papers_8 = {
  "Miscellaneous Topics": [
    {
      'title': 'Efficient Water Splitting Based Green Hydrogen Synthesis: A Numerical Approach',
      'authors': 'Vijay Kumar, Arun Kumar Tiwari',
    },
    {
      'title': 'Performance Assessment of Zeotropic Mixture for Different Organic Rankine Cycle Configurations for Medium Source Temperature',
      'authors': 'Summaiya Javed, Arun Kumar Tiwari',
    },
    {
      'title': 'A Numerical Model for Smoke Filling in a Compartment with Single Vertical Vent',
      'authors': 'Seik Mansoor Ali, Sahil Patwardhan',
    },
    {
      'title': 'Influence of spacer grid designs on thermal hydraulics in a hexagonal sub-assembly',
      'authors': 'Harish Pothukuchi, Ayush Kumar Rao, Manpreet Singh, Shanmugadas K. P.',
    },
    {
      'title': 'Design Optimization of Liquid Cooled Cold Plate using nanoparticle fluid',
      'authors': 'Aryan Koshatwar, Atharva Bande, Mangesh Chaudhari, Atharva Patil, Atharva Chippa',
    },
    {
      'title': 'Pseudoplastic Fluid Flow over a Square and a Rectangular Cylinder Near a Plane Wall',
      'authors': 'Akhileshwar Mani Tripathi, Sudipto Sarkar, Subrata Kumar Ghosh',
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
                    SessionObject(room: "LHC 207", name: session.key, papers: session.value),
                  for (var session in papers_4.entries)
                    SessionObject(room: "LHC 105", name: session.key, papers: session.value),
                  for (var session in papers_5.entries)
                    SessionObject(room: "LHC 105", name: session.key, papers: session.value),
                  for (var session in papers_6.entries)
                    SessionObject(room: "LHC 105", name: session.key, papers: session.value),
                  for (var session in papers_7.entries)
                    SessionObject(room: "LHC 105", name: session.key, papers: session.value),
                  for (var session in papers_8.entries)
                    SessionObject(room: "LHC 105", name: session.key, papers: session.value),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
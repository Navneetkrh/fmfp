import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'sessionobj.dart';

class D2s2 extends StatelessWidget {
  D2s2({Key? key}) : super(key: key);

  final Map<String, List<Map<String, String>>> papers = {
    "Fundamental Studies in Fluid Mechanics": [
      {
        'title': 'LES study of two-strut-based supersonic combustor',
        'authors': 'Dr Gautam Choubey, M Solanki, Om Patel, Sumit Tripathi',
      },
      {
        'title': 'Effect of viscosity models on diatomic shock structure using multi-temperature approach',
        'authors': 'Harshal Srivastava, Tapan Mankodi, Rho Myong',
      },
      {
        'title': 'Flow structures and heat flux parameterizations in dry convective atmospheric boundary layers',
        'authors': 'Bela Lodh, Niranjan Ghaisas, Raghuvamshi K, Kaushal Gujrathi, Vishal Dixit',
      },
      {
        'title': 'Numerical Investigation of Fluid Flow and Heat Transfer in the Microchannel Channel Heat Sink with Different Geometric Fins',
        'authors': 'Rohit Kumar, Nabadeep Choudhury, Manmohan Pandey',
      },
      {
        'title': 'Spectral analysis of plane turbulent wall jets using PIV',
        'authors': 'Harish Choudhary, Abhishek Gupta, Shibani Bhatt, Pranav Sood, Prajyot Sapkal, Thara Prabhakaran, Anandakumar Karipot, Shivsai Dixit',
      },
      {
        'title': 'Relaminarization and Transition of a Tripped Laminar Boundary Layer over a Torpedo Shaped Model',
        'authors': 'Kamal Raj Sharma, Malkeet Singh, Arun Saha',
      },
    ],
  };

  
  final Map<String, List<Map<String, String>>> papers_2 = {
    "Computational Fluid Dynamics": [
      {
        'title': 'Creeping flow of shear-thinning fluids through an orifice',
        'authors': 'Niharika Dutt, Swati Patel',
      },
      {
        'title': 'Nonlinear numerical study of annular fin of different profiles',
        'authors': 'Harishchandra Thakur',
      },
      {
        'title': 'Analysis of Symmetrical Airfoil Performance using Computational Fluid Dynamics under Varying Flow Conditions',
        'authors': 'Arunabha Mahato, Sony Atwal, Subhas Chandra Rana',
      },
      {
        'title': 'The 2D Analysis of Seepage flow in Concrete Dam by CFD',
        'authors': 'Biri Singh, Upama Singh Pahihar, Ankit Prakash, Dr. Anubhav Rawat',
      },
      {
        'title': 'Lattice Boltzmann simulation studies on flow-particle interactions',
        'authors': 'Vijay Prabhas Kodamalla, Dhiraj Patil',
      },
      {
        'title': 'Object Oriented C++ Programming for Thermo Electric Multiphysics Topology Optimization',
        'authors': 'Hitesh Kumar Sinha, Krishna Mohan Singh, Ganesh Balu Kumbhar',
      },
    ],
  };

final Map<String, List<Map<String, String>>> papers_3 = {
  "Fluid Structure Interaction": [
    {
      'title': 'Penstock misalignment inducing pressure loss and stress concentration',
      'authors': 'Navam Shrivastava, Anant Kumar Rai',
    },
    {
      'title': 'Flow-induced oscillation of two thin flexible sheets placed in a side-by-side configuration',
      'authors': 'Nitika Dhiman, Arpit Chaudhary, Dr. Kamal Poddar',
    },
    {
      'title': 'Dynamics of oscillating pendulum in an air jet',
      'authors': 'Md Shadab Hasan, Deepu Prabhakaran, Kamlesh Kumar',
    },
    {
      'title': 'Kinematics of flexible splitter filament behind square cylinder in soap film at low Reynolds number',
      'authors': 'Chandan Pothal, Sachin Shinde',
    },
    {
      'title': 'Vortex Induced Vibration of Square Cylinder in Forced Convection Regime Subjected to Pulsatile Flow',
      'authors': 'Saif Masood, Mohammad Athar Khan, Syed Fahad Anwer, Saleem Anwar Khan, Rashid Ali, MOHD NAVED, abdus samad',
    },
  ],
};

final Map<String, List<Map<String, String>>> papers_4 = {
  "Multiphase Flows": [
    {
      'title': 'Three-Dimensional Redistribution-based Volume Preserving Piecewise-Linear Interface Construction Volume-of-Fluids Algorithm for Non-Inertial Frame',
      'authors': 'Yogesh Prajapati, Jyotirmay Banerjee, Rajvaibhav Patil',
    },
    {
      'title': 'Experimental investigation of droplet impact on spherical particles',
      'authors': 'Abhijith Vijayan, Niju Mohammed K',
    },
    {
      'title': 'Evolution of a Rising Bubble in a Viscosity Stratified Fluid Medium',
      'authors': 'Shatrughan Jaiswal',
    },
    {
      'title': 'Experimental study on the evaporation of iron nitrate nonahydrate droplet',
      'authors': 'Agnimitra Ghosh, Mikhil Surendran, Shamit Bakhsi, T.N.C. Anand',
    },
    {
      'title': 'Natural Convection in Molten Phase Change Materials: Effect of Thermo-Physical Properties',
      'authors': 'Sunny Saini, Naresh Yarramsetty, Jyotirmay Banerjee, Divyang Chauhan',
    },
    {
      'title': 'Mathematical Model for Heat Transfer Limitations of Cylindrical Heat Pipe',
      'authors': 'Dinesh Kumar Jain, Arvind V. Deshpande',
    },
  ],
};
final Map<String, List<Map<String, String>>> papers_5 = {
  "Multiphase Flows": [
    {
      'title': 'Dynamics of Multiphase Droplets in the Transition from Dropwise to Filmwise Laminar Condensation over a Vertical Hydrophilic Wall',
      'authors': 'Nilojendu Banerjee, Satyanarayanan Seshadri, Shiva N',
    },
    {
      'title': 'Flow-regimes Study of Two-phase N2 Flow in A Vertical Microchannel: A Numerical Exercise',
      'authors': 'Ramaraman Choudhary, Suman Ghosh, Adhyan Saxena',
    },
    {
      'title': 'Solidification of binary alloy in the presence of ultrasonic streaming and cavitation',
      'authors': 'Jigar Desai, Atul Sharma, Shyam Karagadde',
    },
    {
      'title': 'Investigation on the Phase Change Material Based Battery Thermal Management System under Fast charging Condition',
      'authors': 'Ayyappa Kundrapu, Saket Verma',
    },
    {
      'title': 'Melting Performance of Phase Change Material in an Oriented Rectangular Enclosure: An Experimental and Numerical Study',
      'authors': 'Anjan Nandi, Samarendu Biswas, Mrittika Bhowmik, Nirmalendu Biswas, Aparesh Datta',
    },
    {
      'title': 'Chill-down in LN2 Transfer Line Initially Filled with Air: A Transient Analysis',
      'authors': 'G Gopal Krishna, Suman Ghosh, Vishal Uday Sankpal',
    },
  ],
};
final Map<String, List<Map<String, String>>> papers_6 = {
  "Aerodynamics": [
    {
      'title': 'Ground Effects on Flows Past Symmetric Airfoils of Different Thicknesses',
      'authors': 'Dilip Parmar, Deepak Kumar Singh, Arjun Sharma',
    },
    {
      'title': 'Aerodynamic Characteristics of S809 and S1046 Airfoils with Constant and Variable Split',
      'authors': 'Nivethitha Nagarajan, Bhanu Chandana G, Nivedha GS, Dr. Nadaraja Pillai',
    },
    {
      'title': 'Effect of Truncation and Axial Location of Plug Geometry on the Performance of Aerospike Nozzle',
      'authors': 'Dakshina Murthy Inturi, Lovaraju Pinnam, Ravindra Kumar Pasupuleti',
    },
    {
      'title': 'Thermal flow control of transonic shock boundary layer interactions for SHM1 airfoil exhibiting shock-induced separation',
      'authors': 'Narottam Shandilya, Aditi Sengupta',
    },
    {
      'title': 'Spectral proper orthogonal decomposition of the wake behind a circular cylinder',
      'authors': 'Nilavarasan T',
    },
    {
      'title': 'Performance Enhancement of NACA 0015 Wing using Rotating Cylinder Vortex Generator',
      'authors': 'Madhusudan Achari, S N Jadhav, Akshay Gupta, Akshaat Singh, Harshvardhan Saxena, Sanjay Jain, Tejas Raval, Ath S Singhal, Ath S Singhal',
    },
  ],
};
final Map<String, List<Map<String, String>>> papers_7 = {
  "Miscellaneous Topics": [
    {
      'title': 'Passive Cooling through the Integration of Phase Change Material in a Direct Heat Gain Wall',
      'authors': 'Vikas Chandra, Prashant Anand, Chirodeep Bakli',
    },
    {
      'title': 'Machine Learning Control to enhance flow control authority of DBD Plasma Actuator',
      'authors': 'Gohil Amitkumar Kiritbhai, Pk Panigrahi',
    },
    {
      'title': 'Heat Transfer Performance of Micro-Encapsulated Phase Change Material with Nano Particles for Thermal Energy Storage Application',
      'authors': 'Sudev Das, Aishwarya Salve',
    },
    {
      'title': 'Cold flow hydrodynamics of a pilot-scale dual fluidized bed gasifier',
      'authors': 'Pawar Ajay, Saurabh Gupta, Santanu De',
    },
    {
      'title': 'Effect of spiral fins on the cooling performance of internal channel cooled sturbine blades',
      'authors': 'Ashish Mishra, Vivek Yadav, Arvind Kumar',
    },
    {
      'title': 'Interaction of a moving shock with a granular particle curtain',
      'authors': 'Aasheesh Bajpai, Gohil Amitkumar Kiritbhai',
    },
  ],
};
final Map<String, List<Map<String, String>>> papers_8 = {
  "Bio-Fluid Mechanics": [
    {
      'title': 'Comparative analysis of Newtonian and non-Newtonian viscosity of blood on flow in an intracranial aneurysm',
      'authors': 'Gaurav kumar, Aneesh A.M., Sumit Kumar',
    },
    {
      'title': 'Coupled discrete phase and Eulerian wall film models-based analyses of drug particle depositions in human respiratory airways',
      'authors': 'Kishore Singh Patel, Bukke Kiran Naik, SAMEER VERMA',
    },
    {
      'title': 'Experimental investigation of hydrodynamic instabilities due to airflow over a liquid film in a horizontal channel',
      'authors': 'Aranyak Chakravarty, Sudipta Saha, Sk Hasan Raja, Biswanath Chakraborty, Sourav Sarkar, Swarnendu Sen, Achintya Mukhopadhyay',
    },
    {
      'title': 'Hemodynamic and flow feature analysis of multiple cerebral aneurysms in a single patient: A special case study',
      'authors': 'Anjana Kannan, B. S. V. Patnaik, Chanikya Valeti, B. J. Sudhir',
    },
    {
      'title': 'Investigation of streamline patterns and wall shear stress distributions at different stages of carotid artery stenosis',
      'authors': 'Md Yeashir Arafat, Shashwata Chakraborty, Ayesha Siddika, Tasnova Tamanna Silme',
    },
    {
      'title': 'A numerical study on focusing of micro-particle in serpentine micro-channels',
      'authors': 'Niraj Shah, Absar Lakdawala, Bruhad Naik',
    },
  ],
};
final Map<String, List<Map<String, String>>> papers_9 = {
  "Miscellaneous Topics": [
    {
      'title': 'Hybrid ANN-model for Estimating Performance Parameters of Supersonic Air Ejectors',
      'authors': 'Pradeep Gupta, Pramod Kumar, Armin Hafner, Srisha Rao',
    },
    {
      'title': 'Numerical Investigation of Chimney plume dispersion under crosswind conditions',
      'authors': 'Atharva Pandit, Shailesh Nikam',
    },
    {
      'title': 'Review of battery thermal management systems for electric vehicles.',
      'authors': 'Ram Babu Gupta, Tanmay Dutta, Devesh Kumar',
    },
    {
      'title': 'Contactless Air Conveyor System for Handling Clean and Delicate Object Using Pressurized Air Flow.',
      'authors': 'Parth Prabhu, Sarwarth Pawase, Pranav Bhosale, Mangesh Chaudhari',
    },
    {
      'title': 'Assessment of containment thermal hydraulic module PARIRODHAN of PRABHAVINI code v3.0 against NUPEC m-4-3 TEST',
      'authors': 'Aniket Gupta, Dharmanshu Mittal, Utkarsh Chikkanagoudar',
    },
    {
      'title': 'Assessment of different hypervapotron fin profiles for the multiphase cooling of power vacuum tubes',
      'authors': 'Vikas Lakhera, Rohit Anand',
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
                    SessionObject(room: "LHC 105", name: session.key, papers: session.value),
                  for (var session in papers_4.entries)
                    SessionObject(room: "LHC 105", name: session.key, papers: session.value),
                  for (var session in papers_5.entries)
                    SessionObject(room: "LHC 304", name: session.key, papers: session.value),
                  for (var session in papers_6.entries)
                    SessionObject(room: "LHC 206", name: session.key, papers: session.value),
                  for (var session in papers_7.entries)
                    SessionObject(room: "LHC 106", name: session.key, papers: session.value),
                  for (var session in papers_8.entries)
                    SessionObject(room: "LHC 207", name: session.key, papers: session.value),
                  for (var session in papers_9.entries)
                    SessionObject(room: "LHC 204", name: session.key, papers: session.value),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
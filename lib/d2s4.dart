import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'sessionobj.dart';

class D2s4 extends StatelessWidget {
  D2s4({Key? key}) : super(key: key);

  final Map<String, List<Map<String, String>>> papers = {
    "Computational Fluid Dynamics": [
      {
        'title': 'Mixed Convection Heat Transfer around a Sphere in a Rotating Fluid',
        'authors': 'Madhumita Sahoo, Bapuji Sahoo, TVS SEKHAR',
      },
      {
        'title': 'Enhancing Mixing Efficiency in Raccoon-Shaped Passive Micromixers',
        'authors': 'Arabdha Bhattacharya, Aniket Halder, Soumyadeep Sarkar, Nirmalendu Biswas, Nirmal K. Manna',
      },
      {
        'title': 'Natural and Forced Convective Heat Transfer from Finned Spheres',
        'authors': 'Anurag Mayekar, Ruchish Pakhare, Pratham Nagarhalli, Tushar Pachkudave, Dr Pramod Kothmire, Yogesh Bhalerao',
      },
      {
        'title': 'Investigation of the Flow Dynamics of Power-Law Fluids inside a Lid-Driven Cavity with a Concentric Square Cylinder: A Numerical Study using Lattice Boltzmann Method',
        'authors': 'Shuvranil Sanyal, Prabir Sikdar, Dr. Sunil Manohar Dash, Somnath Roy',
      },
      {
        'title': 'CFD-Based Performance Analysis and Optimization of Earth-Air Heat Exchangers.',
        'authors': 'Pranav Lohar, Chinmay Paradkar, Pratik Nirmal, Hrishikesh Desai, Ganesh Shete',
      },
      {
        'title': 'Development of Immersed Boundary Method for High-speed Compressible Flows in OpenFOAM',
        'authors': 'Punit Pandey, Naveen Kumar, Ankit Bansal, Krishna M. Singh',
      },
    ],
  };

  
  final Map<String, List<Map<String, String>>> papers_2 = {
    "Instability, Transition and Turbulence": [
      {
        'title': 'Effect of Slip on Marangoni Instability in two-layer Creeping Flow',
        'authors': 'Ankur Agrawal, Deepu Prabhakaran, R Usha',
      },
      {
        'title': 'Study of the Atmospheric Boundary Layer Flow over a Heterogeneous Surface with a Smooth-to-Rough Roughness Transition',
        'authors': 'Kingshuk Mondal, Naveen N. Kethavath, Niranjan Ghaisas',
      },
      {
        'title': 'Large Eddy Simulation of the Flow Over Two-Dimensional Smooth Hills with Increasing Slopes',
        'authors': 'ANKITA MAITY, Jay Patel, Niranjan Ghaisas',
      },
      {
        'title': 'Numerical simulation of a damped-driven MNLS equation to study turbulence behavior',
        'authors': 'Praveen Kumar, RP Sharma, R Uma',
      },
      {
        'title': 'Role of Reynolds number for flow in a rectangular lid-driven cavity with a vertical thermal gradient',
        'authors': 'Bhavna Joshi, Aditi Sengupta',
      },
      {
        'title': 'Stability Analysis of Buoyancy Driven Flow in Square Cavity',
        'authors': 'Debendra Nath Sarkar, Viswanathan Kumaran',
      },
    ],
  };
final Map<String, List<Map<String, String>>> papers_3 = {
  "Multiphase Flows": [
    {
      'title': 'Saline water spray characterization in a rotary injector for thermal desalination process',
      'authors': 'Shubham Kumar, ARSHDEEP SINGH, VIGNESH P, SRIKRISHNA SAHU',
    },
    {
      'title': 'Time-resolved Imaging of Droplet Collision in Interacting Sprays',
      'authors': 'Surya Ghosh, Srikrishna Sahu',
    },
    {
      'title': 'Residual Thickness Measurement During Droplet Impact Using a Chromatic Confocal Sensor',
      'authors': 'Koushik Biswas, Mikhil Surendran, Shamit Bakshi',
    },
    {
      'title': 'Bubble entrapment in shallow water',
      'authors': 'Raghavendra Naidu S, Kamal Poddar, Sanjay Kumar',
    },
    {
      'title': 'Experimental Studies on Startup and Steady-State Characterisation of Miniature Loop Heat Pipe',
      'authors': 'Chandan Nashine, Kamlesh Kumar Baraya, Manmohan Pandey',
    },
    {
      'title': 'Experimental Investigation of Flow Boiling In Straight and Diverging Rectangular Miniature Channels with High-Speed Flow Visualization',
      'authors': 'Arman Mohaddin Nadaf, Sandip Kumar Sarma, Manmohan Pandey',
    },
  ],
};
final Map<String, List<Map<String, String>>> papers_4 = {
  "Bio-Fluid Mechanics": [
    {
      'title': 'Effect of phase difference on the propulsion of a combined heaving and trailing-edge morphing foil',
      'authors': 'Vaibhav Joshi, Ishan Neog',
    },
    {
      'title': 'Fluid Dynamics in Curved Kidney Tubules: unravelling Renal pathologies.',
      'authors': 'Supratim Saha, Sarit K Das',
    },
    {
      'title': 'Effect of length of flexible flap on thrust generation for a flexible foil pitching in quiescent fluid',
      'authors': 'Akshay B Menon, Sachin Shinde',
    },
    {
      'title': 'Wake transition for flexible foil flapping in a soap film tunnel',
      'authors': 'Sarthak Kaushikkumar Patel, Sachin Shinde',
    },
    {
      'title': 'Investigating the effect of forewing-hindwing phasing on the flowfield of a tethered Pantala flavescens',
      'authors': 'Amit Pawar, KUMAR SANAT RANJAN, Arnab Roy, Sandeep Saha',
    },
    {
      'title': 'Predicting the blood flow in zebrafish hindbrain with multiple planes RBCs signal using Artificial Intelligence Velocimetry',
      'authors': 'Vivek Kumar, Mitsuho Nakakura, Prashant Kumar, Hiroyuki Nakajima, Yosuke Hasegawa, George Em Karniadakis',
    },
  ],
};
final Map<String, List<Map<String, String>>> papers_5 = {
  "Aerodynamics": [
    {
      'title': 'Numerical study of the flow characteristics of wings with low aspect ratio at low Reynolds number',
      'authors': 'Dattatraya Kulkarni, Rajani B.N., Vinayak Kulkarni',
    },
    {
      'title': 'Numerical Simulations of a Cricket Ball Trajectory',
      'authors': 'Pasunuru Sai Vineeth, MV Panchagnula',
    },
    {
      'title': 'Primary Instability Analysis of Modified Square Cylinder',
      'authors': 'Darshna Songara, Pritanshu Ranjan, Mayuresh Magdum',
    },
    {
      'title': 'Investigation of flow past a tandem flat plate airfoil with modified trailing edges',
      'authors': 'Shailesh Kr Jha, Aryasomayajula Sri Prabha Harshini, A Kaivalya Pranathi',
    },
    {
      'title': 'Numerical Investigation of Flow Over an Airfoil at Low and Moderate Reynolds Numbers',
      'authors': 'Sudarshana Mohan, Tanish Pannasa, Urvi Mehta, Devansh Vasudev, Jayahar Sivasubramanian',
    },
    {
      'title': 'Cowl Deflection During Intake Buzz and its Influence on Intake Performance',
      'authors': 'Sanjana Rao, Praveen Kumar, Sudip Das',
    },
  ],
};
final Map<String, List<Map<String, String>>> papers_6 = {
  "Turbomachinery": [
    {
      'title': 'Thermal Characteristics and Performance Analysis of Cryogenic Liquid Oxygen Pump of a Rocket Engine',
      'authors': 'Jeetendra Kumar, Prejil Kumar B, Rijish Kumar P, Unnikrishnan Nair P, Jayan N, Xavier M',
    },
    {
      'title': 'Preliminary Design and Numerical Analysis of a Propeller for UAV Application',
      'authors': 'Nitin Rahee, Sanand T V',
    },
    {
      'title': 'Hydrokinetic Energy Utilization Assessment on Deployment of Circular Deflector for Savonius Turbine',
      'authors': 'Gaurav Saini, Omveer Singh, Ashoke De',
    },
    {
      'title': 'Redesign of a Transonic Axial Turbine Vane Airfoil',
      'authors': 'S N Agnimitra Sunkara, Monisha Patel A, Prathapanayaka Rajeevalochanam',
    },
    {
      'title': 'A systematically organized series of mathematical calculations for the development of a Helium compressor tailored for a Gifford-McMahon Cryocooler',
      'authors': 'Sachindra Rout, Sahadashan Khute, Debashis Pasa, Madhu Pulagam, Sunil Sarangi',
    },
    {
      'title': 'Enhancing the Accuracy of Transition Models for Gas Turbine Applications Through Data-Driven Approaches',
      'authors': 'Harshal Akolekar',
    },
  ],
};
final Map<String, List<Map<String, String>>> papers_7 = {
  "Propulsion and Power": [
    {
      'title': 'Fuel Jet Break-up Mechanism Analysis Using Graph Theory and Combinatorics',
      'authors': 'Nikhil Dev',
    },
    {
      'title': 'Cold flow characterisation of Variable Area Cavitating Venturi',
      'authors': 'Vikash Kumar, Jipsu P Eldho, Rafeeque T. A, Dileep Kumar B, Ankita Dubey, Madhukumar T, T. John Tharakan',
    },
    {
      'title': 'Numerical Study of Flame Characteristics of Multi-tube Inverse Diffusion Burner',
      'authors': 'Mayur Vadoliya, Ankit Dekhatawala, Rupesh Shah, Sunil Jatoliya, Nikhil A. Baraiya',
    },
    {
      'title': 'A Comparative Study of Swirl and Non-Swirl Feed Injectors: Performance Analysis and Insights',
      'authors': 'Deepak Kumar, Abhishek Verma, Abhijit Kushari, Hemant Mishra, Pramod Kumar',
    },
    {
      'title': 'A Fan Shaped Twin Fluid Nozzle for the FCC System: The Role of Impactor Bolt',
      'authors': 'Deepak Kumar, Abhishek Verma, Abhijit Kushari, Hemant Mishra, Pramod Kumar',
    },
    {
      'title': 'Modelling and Estimation of Pressure Excursion in Cyclotron Gas Target',
      'authors': 'Brindaban Ghosh, Anjan Dutta Gupta',
    },
  ],
};
final Map<String, List<Map<String, String>>> papers_8 = {
  "Miscellaneous Topics": [
    {
      'title': 'Automated extraction of contorted geometry of 2D flexible surfaces from noisy images using Deep Learning models & algorithms',
      'authors': 'Keshav Birdi, Sachin Shinde',
    },
    {
      'title': 'Twisted Tape Innovations: Enhancing Heat Transfer Efficiency in a Heat Exchanger',
      'authors': 'Amey Kulkarni, Mangesh Chaudhari, Yash Mali, Vaishnavi Kumawat, Atharva Kulkarni, Shrinidhee Kulkarni',
    },
    {
      'title': 'Experimental Study of Heat Transfer in Composite Vessels',
      'authors': 'Sarthak Deshmukh, Aashish Shinde, Dr Pramod Kothmire',
    },
    {
      'title': 'Deep Learning Methods for Q field Reconstruction Using Vortex Axes',
      'authors': 'Rushil Samir Patel, Li Xi',
    },
    {
      'title': 'Analysis of Core-Annular Flow with Power Law Fluid in the Annular Region Lubricating the High Viscosity Newtonian Fluid',
      'authors': 'Dr. Sumit Tripathi, Shreyaskar Gautam, Dr Gautam Choubey, Mayank Saini',
    },
    {
      'title': 'Evolution and Motion of Non-Newtonian Liquid Drops Ejected from a Nozzle in a Newtonian Medium Inside a Microchannel',
      'authors': 'Dr. Sumit Tripathi, Saurabh Goyal, Amit Kumar',
    },
  ],
};
final Map<String, List<Map<String, String>>> papers_9 = {
  "Miscellaneous Topics": [
    {
      'title': 'Desiccant Assisted Evaporative Cooling: A Thermodynamic Study',
      'authors': 'Ravi Beniwal, Himanshu Tyagi',
    },
    {
      'title': 'Study of non-uniform fin cross-sections for heat transfer enhancement in internal flows',
      'authors': 'Amit Arora, Prabhav Agrawala, Yatharth Lilhare',
    },
    {
      'title': 'Description of DNB Test Facility for 37 Fuel Pin Bundle of Indian PHWRs',
      'authors': 'Vivek Popat, Arnab Dasgupta, Dinesh K Chandraker, Sunil K Sinha',
    },
    {
      'title': 'Numerical Investigation of Forced Convection inside a MCHS using Microfin - Dimple as a Flow Disruptive Structure',
      'authors': 'Karan Dhuper, Lalit Kumar, Siddhartha Duttagupta',
    },
    {
      'title': 'Effect of truncated triangular fins on heat transfer characteristics of annular flows',
      'authors': 'Amit Arora, Prabhav Agrawala',
    },
    {
      'title': 'Sustainable Machining with Vegetable Oil-Based Nanofluids for Enhanced Performance and Environmental Impact: A Review',
      'authors': 'Rajneesh Raghav, Rahul S. Mulik',
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
                    SessionObject(room: "LHC 304", name: session.key, papers: session.value),
                  for (var session in papers_3.entries)
                    SessionObject(room: "LHC 105", name: session.key, papers: session.value),
                  for (var session in papers_4.entries)
                    SessionObject(room: "LHC 307", name: session.key, papers: session.value),
                  for (var session in papers_5.entries)
                    SessionObject(room: "LHC 206", name: session.key, papers: session.value),
                  for (var session in papers_6.entries)
                    SessionObject(room: "LHC 205", name: session.key, papers: session.value),
                  for (var session in papers_7.entries)
                    SessionObject(room: "LHC 207", name: session.key, papers: session.value),
                  for (var session in papers_8.entries)
                    SessionObject(room: "LHC 106", name: session.key, papers: session.value),
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
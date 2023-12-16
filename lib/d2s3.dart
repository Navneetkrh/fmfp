import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'sessionobj.dart';

class D2s3 extends StatelessWidget {
  D2s3({Key? key}) : super(key: key);

  final Map<String, List<Map<String, String>>> papers = {
    "Measurement Techniques in Fluid Flows": [
      {
        'title': 'Design and Development of 6-inch Size One Way Flow Restrictor',
        'authors': 'Satyanarayan Kundu, Mukesh Kumar, S P Gupta, A Vaidya, Tipu Sultan, Sk Sinha',
      },
      {
        'title': 'Flow-field and acoustic characterization of actively controlled jets via steady fluidic injection',
        'authors': 'Ambica Singh, Arun Kumar Perumal, Arnab Samanta',
      },
      {
        'title': 'Image Processing Schlieren Images of Supersonic Free Jets',
        'authors': 'Aruna Priyadharshini Muruganandam, Jeevitha Jagajeevan, Manikandan K, Rajarshi Das',
      },
      {
        'title': 'Experimental Investigation on Effect of Blockage for Velocity Measurement in Wind Tunnel',
        'authors': 'Bodanki Vineeth Naidu, Dishant Sharma, VISHNU NAMBOODIRI V, RAHUL GOYAL',
      },
      {
        'title': 'Effect of air temperature and velocity on drying characteristics of Jamun Slices using Convective Drying Method: An Experimental Analysis',
        'authors': 'Simit Prajapati, Mitesh Shah, Shivamurti Srivastava',
      },
      {
        'title': 'Impact of Outlet Geometry on Annular Swirl Burner Flame Characteristics',
        'authors': 'Vishnu Raj, prathap chockalingam',
      },
    ],
  };

  
  final Map<String, List<Map<String, String>>> papers_2 = {
    "Computational Fluid Dynamics": [
      {
        'title': 'Numerical Investigation of Low Reynold\'s Number Mini-Channel Water Cooling for Li-ion Battery Thermal Management',
        'authors': 'Indra Kumar Lokhande, Nishant Tiwari',
      },
      {
        'title': 'Smoothed particle hydrodynamic simulation for forced convection in zigzag shaped microchannel',
        'authors': 'Harisankar P C, Tapas Sil',
      },
      {
        'title': 'Impact of different steam velocities on turbine power generation',
        'authors': 'Rohit Kanherkar, Pranav Nikam, Sanket Jadhav, Pratik Kundargi, Dr Pramod Kothmire, Abhijeet Malge',
      },
      {
        'title': 'Experimental & CFD Investigation of Radiative Heat Transfer for Room Cooling',
        'authors': 'Yash Tajane, Gaurav Dhangar, Mahesh Eshi, Pranav Lohar, Dr Pramod Kothmire',
      },
      {
        'title': 'Investigation on Effect of Trailing Edge Fillet Radius on Axial Turbine Blades',
        'authors': 'Chirag Patel, SANJAY P, Vimal Patel, VIKRAM RATHOD',
      },
      {
        'title': 'Numerical investigation of spray characteristics for main atomizer of lean burn gas turbine fuel injector',
        'authors': 'Shrey Srivastava, Nandani Gupta, Ayush Divyansh, Shanmugadas K P',
      },
    ],
  };
final Map<String, List<Map<String, String>>> papers_3 = {
  "Instability, Transition and Turbulence": [
    {
      'title': 'Global stability analysis of axisymmetric boundary layer with uniform suction and injection',
      'authors': 'Mayank Thummar, Ramesh Bhoraniya, Vinod Narayanan',
    },
    {
      'title': 'Flow Characteristics in Two-Dimensional Sudden Expansion in presence of Solid Cylinder',
      'authors': 'Rishabh Prakash, Nandan Sarkar, Somnath Roy',
    },
    {
      'title': 'Spatial Stability analysis of Compressible boundary layer over the cold and hot Isothermal flat plate by Compound Matrix Method',
      'authors': 'Neha Chaturvedi, Rituparn Singh, Swagata Bhaumik',
    },
    {
      'title': 'Assessment of Pressure and Velocity Dynamics for Turbulent Flow across a Z-bend Pipe: A Computational Analysis',
      'authors': 'Ishita De, Mithun Das, Nitesh Mondal',
    },
    {
      'title': 'Mixing Enhancement using Supersonic Ejector',
      'authors': 'Nithin R, Anvith Nag H J, Gopalakrishna Narayana',
    },
    {
      'title': 'Scaling Law Analysis for Transient Fluid Flow and Heat Transfer Characteristics of Packed Bed with Mono-sized Pebbles',
      'authors': 'Sandip K Saha, Atul Sharma, Pratyush Kumar',
    },
  ],
};
final Map<String, List<Map<String, String>>> papers_4 = {
  "Multi Phase Flows": [
    {
      'title': 'Experimental study on storage of heat power by heat dissipation in electronic modules using thermic fluids and phase change material',
      'authors': 'Gopi Kannan K, Pawan Kumar Singh',
    },
    {
      'title': 'To identify Slug Flow through Industrial Pipes and Avoid Pipe Cracks',
      'authors': 'Sunny Saini, Jyotirmay Banerjee',
    },
    {
      'title': 'Numerical investigation of non-Newtonian droplet impact on superhydrophobic surfaces',
      'authors': 'J Anandu, K Nandakumar Chandran, Niju Mohammed K, S Kumar Ranjith',
    },
    {
      'title': 'Effect of PCM Thickness on the Battery Thermal Management of Thick and Thin Battery Cells under High Discharge Rates',
      'authors': 'Sr Shravan Kumar, Amba Prasad Rao',
    },
    {
      'title': 'Numerical Prediction of Transient ONB Under Different Heating Conditions',
      'authors': 'John Pinto, Janani Murallidharan, Kannan Iyer',
    },
    {
      'title': 'Experimental Investigation of Sintered Bi-porous Capillary Wicks for Miniature Loop Heat Pipes',
      'authors': 'Toni Kumari, Chandan Nashine, Manmohan Pandey',
    },
  ],
};
final Map<String, List<Map<String, String>>> papers_5 = {
  "Multiphase Flows": [
    {
      'title': 'Numerical Study of Paraffin Wax-Assisted Thermosyphon for Electronic Thermal Management',
      'authors': 'Jobin Jose, Tapano Kumar Hotta',
    },
    {
      'title': 'A numerical study on the effect of various forces on rising bubbles in a confinement',
      'authors': 'Himanshu Kishnani, Abhishek Kundu',
    },
    {
      'title': 'Bayesian Regularisation algorithm for the prediction of droplet entrainment fraction in annular two phase flows',
      'authors': 'Jayesh Vyas, Shaifu Gupta, Harish Pothukuchi',
    },
    {
      'title': 'Effect of Porous Rib Blockage Fraction on the Heat Transfer Performance of a Mini-channel: Pore-Scale Simulation',
      'authors': 'Surendra Singh Rathore, Balkrishna Mehta, Pradeep Kumar, Mohammed Asfer',
    },
    {
      'title': 'Study of bubble departure behaviour in non-Newtonian fluids',
      'authors': 'Nikhil Chitnavis, B.S.V. Patnaik, Harish Pothukuchi',
    },
    {
      'title': 'Nucleate pool boiling studies an aqueous NaCl Solutions using a non-intrusive optical imaging technique',
      'authors': 'Vineet Pandey, Ravi Raushan, Yogesh Nimdeo',
    },
  ],
};
final Map<String, List<Map<String, String>>> papers_6 = {
  "Fluid-structure Interaction": [
    {
      'title': 'Fluid-structure Interaction of a Collapsible Tube Under the Effect of Buoyancy',
      'authors': 'Aashish Ranjan, Deepu Prabhakaran, Kamlesh Kumar, Subrata Kumar',
    },
    {
      'title': 'Numerical simulation of linear compressor cascade at Transonic flow',
      'authors': 'Ragupathy S, Abhijit Kushari',
    },
    {
      'title': 'Surface Wettability Alteration by Nanoparticles for Improving Petroleum Production',
      'authors': 'Nanji J. Hadia, Sivakumar Pandian, Himanshu Choksi, Yeap Hung Ng',
    },
    {
      'title': 'Piezoelectric Fan for Cooling of Electronic Devices – Effect of Fan Configuration and Oscillation Frequency',
      'authors': 'Niloy Sen, Ankur Kumar, Anubhav Sinha',
    },
  ],
};
final Map<String, List<Map<String, String>>> papers_7 = {
  "Aerodynamics": [
    {
      'title': 'Effects of Roughness on the Pressure Side of a Symmetric NACA 0015 Airfoil',
      'authors': 'Vikram M, Ranga Srinivas Gokul, Karthik Vel E, Nadaraja Pillai S, Kalyana Raama Bheema, Kalyana Raama Bheema',
    },
    {
      'title': 'Design and Development of a Model Rocket with Active Stabilization',
      'authors': 'Harsha Vardhana, Praneeth B V, Mohammed Zaidur Rahman, Jayahar Sivasubramanian',
    },
    {
      'title': 'Maximizing Savonius Turbine Performance using Kriging Surrogate Model and Grey Wolf-Driven Cylindrical Deflector Optimization',
      'authors': 'Subhrajit Roy, Paras Singh, Vishal Jaiswal, Raj Kumar Singh',
    },
    {
      'title': 'Investigation of Frequency Effects on the Self-Propelled Heaving Airfoils',
      'authors': 'Adhiraj Mukhopadhyay, Durga Charan, Sunil Manohar Dash, Sunita Mishra',
    },
    {
      'title': 'Aerothermodynamic Analysis of a High-Speed Vehicle at Rarefied Conditions with Gas-Surface Interface Effects due to Transpiration',
      'authors': 'Basit Gulzar Sheikh, Ahilan Appar, Himanshu Heer, Rakesh Kumar',
    },
    {
      'title': 'Passive Vane-type Vortex Generators for Aircraft Performance Enhancement: A Review',
      'authors': 'Devansh Talati, Rushil Palsana, Sourabh Rai, S N Jadhav, Sanjay Jain, Madhusudan Achari, Tejas Raval, Ath S Singhal',
    },
  ],
};
final Map<String, List<Map<String, String>>> papers_8 = {
  "Fundamental Studies in Fluid Mechanics": [
    {
      'title': 'Development of square shock tube facility for blast wave simulation',
      'authors': 'Saiphaneendra Karuchola, Dinesh Vagicharla, Debopam Das, Mohammed Ibrahim Sugarno',
    },
    {
      'title': 'Scaling Surface Drag in Atmospheric Boundary Layers under Truly Neutral Conditions',
      'authors': 'Abhishek Gupta, Harish Choudhary, Shibani Bhatt, Pranav Sood, Prajyot Sapkal, Mahen Konwar, Thara Prabhakarn, Shivsai Dixit',
    },
    {
      'title': 'Effect of Surface Undulations on Flow Field During Lunar Landing',
      'authors': 'Shaik Nasser Shaik Nabi, Abhimanyu Gavasane, Tapan Mankodi, Upendra Bhandarkar',
    },
    {
      'title': 'Reynolds Number Similarity of Amplitude and Frequency Modulation in Plane Turbulent Wall Jets',
      'authors': 'Shibani Bhatt, Abhishek Gupta, Harish Choudhary, Pranav Sood, Prajyot Sapkal, Thara Prabhakaran, Shivsai Dixit',
    },
    {
      'title': 'Unsteady Transient Analysis of Ramp: Investigating SWBLI and Separation Bubble using Transient Model',
      'authors': 'Rajamahanthi Manikanta, Mahammad Rameez Arhan Shaik, Ravi Kumar Peetala',
    },
  ],
};
final Map<String, List<Map<String, String>>> papers_9 = {
  "Miscellaneous Topics": [
    {
      'title': 'Design evolution of coolant passage for cooling a substrate by a single stream',
      'authors': 'Ashok Barik, Prafulla K. Swain',
    },
    {
      'title': 'Numerical Simulation of Viscoelastic Flows in a Two-Sided Lid-Driven Square Cavity',
      'authors': 'Sourabh Dhawan, Malay Kumar Das, Pradipta Kumar Panigrahi',
    },
    {
      'title': 'Theoretical Analysis and Numerical Simulation of Particle Behaviour through Electrostatic Precipitator with various Electrode Geometries',
      'authors': 'Poonam Rathod, Shivam Kapure, Shaunak Inamdar, Santosh Mundhe, Dr Pramod Kothmire',
    },
    {
      'title': 'Thermal management of a Lithium-ion battery pack with Paraffin as PCM',
      'authors': 'Shivam Joshi',
    },
    {
      'title': 'SBO initiated Design Extension Condition analysis for Large Indian PHWRs',
      'authors': 'Prashant Sharma',
    },
    {
      'title': 'Understanding the training of PINNs for unsteady flow past a plunging foil through the lens of input subdomain level loss function gradients.',
      'authors': 'Rahul Sundar, Didier Lucor, Sunetra Sarkar',
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
                    SessionObject(room: "LHC 205", name: session.key, papers: session.value),
                  for (var session in papers_2.entries)
                    SessionObject(room: "LHC 305", name: session.key, papers: session.value),
                  for (var session in papers_3.entries)
                    SessionObject(room: "LHC 304", name: session.key, papers: session.value),
                  for (var session in papers_4.entries)
                    SessionObject(room: "LHC 105", name: session.key, papers: session.value),
                  for (var session in papers_5.entries)
                    SessionObject(room: "LHC 204", name: session.key, papers: session.value),
                  for (var session in papers_6.entries)
                    SessionObject(room: "LHC 207", name: session.key, papers: session.value),
                  for (var session in papers_7.entries)
                    SessionObject(room: "LHC 206", name: session.key, papers: session.value),
                  for (var session in papers_8.entries)
                    SessionObject(room: "LHC 307", name: session.key, papers: session.value),
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
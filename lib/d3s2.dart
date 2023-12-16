import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'sessionobj.dart';

class D3s2 extends StatelessWidget {
  D3s2({Key? key}) : super(key: key);

  final Map<String, List<Map<String, String>>> papers = {
    "Fundamental Studies in Fluid Mechanics": [
      {
        'title': 'Numerical Investigation of the Effect of Opposing Jet on the Wall Heat Flux for an Atmospheric Re-Entry Module.',
        'authors': 'Devika Prem, Mathew Varghese, Rahul R, Ankit Gupta, Praveen Nair',
      },
      {
        'title': 'Effect of High Reduced Frequency on Lift overshoot due to Dynamic Stall Vortex',
        'authors': 'Shweta Singh, Kamal Poddar, A. C. Mandal',
      },
      {
        'title': 'Effect of Leading-Edge Geometry on Flow around Corrugated Air foils at Low Reynolds Numbers under Free Stream Flow',
        'authors': 'Parth Patel, Sagar Agle, GS Biradar, Majid H Khan, Ganapati Joshi, Amit Agrawal',
      },
      {
        'title': 'Analysis of Battery cooling with varying position of vortex generators in an immersion-based battery thermal management system',
        'authors': 'Jibin M Joy, Ashish Kumar, Dibakar Rakshit',
      },
      {
        'title': 'Exploring Dynamic Mode Decomposition Technique for Analyses of Transonic Shock Oscillations on Launch Vehicle Model',
        'authors': 'D B Singh, Gireesh Yanamashetti, G K Suryanarayana, G Jagadeesh',
      },
    ],
  };

  
  final Map<String, List<Map<String, String>>> papers_2 = {
    "Computational Fluid Dynamics": [
      {
        'title': 'Flow Field and Structure of Flame Spreading Over Cylindrical Fuels',
        'authors': 'Manu B V, Kambam Naresh Meetei, Amit Kumar, Akash Gupta, Payal Sharma',
      },
      {
        'title': 'Design and Optimization of Performance of Electric Kettle',
        'authors': 'Shantanu Kharche, Pravin Bhor, Dr Pramod Kothmire',
      },
      {
        'title': 'Effect of spacing on tandem arrangement of circular and square cylinder',
        'authors': 'Rutuja Jain, Devabrata Sahoo, Priyank Kumar, Sahil Jadhav, Devanshi Jagtap, Dhanashree Mahajan',
      },
      {
        'title': 'Phase Field Method Based Simulation of Solidification Process in Presence of Gaseous Phase',
        'authors': 'Deepak Talan, Shyam Sunder Yadav',
      },
      {
        'title': 'DEM Simulation of Projectile Impact on a Granular Bed',
        'authors': 'Ritwik Maiti, Saurav Chakraborty',
      },
      {
        'title': 'Numerical Simulation of Passive Air Cooling of Steel Containment for Nuclear Reactor',
        'authors': 'Yogesh Pawar, P.P. Kulkarni, A.K. Dureja, A.K. Nayak',
      },
    ],
  };
final Map<String, List<Map<String, String>>> papers_3 = {
  "Instability, Transition and Turbulence": [
    {
      'title': 'CFD modelling of single-phase pulsatile flow in a pulsed column with novel helical insert',
      'authors': 'Meenakshi Mehra, Nirvik Sen, K. K. Singh, Sourav Sarkar',
    },
    {
      'title': 'Stabilizing thin liquid films on heated slippery slope with variable density and broken time-reversal symmetry',
      'authors': 'Akshay Desai, Amar Gaonkar, Arindam Thander, Souradip Chattopadhyay',
    },
    {
      'title': 'Learning Stable and Generalizable Closed-form Equations for Geophysical Turbulence',
      'authors': 'Karan Jakhar, Rambod Mojgani, Yifei Guan, Ashesh Chattopadhyay, Pedram Hassanzadeh',
    },
    {
      'title': 'Numerical simulation of high velocity mixing inside a miniature jet pump',
      'authors': 'Vimal Kotak, Samiran Sengupta, Sugilal Gopalkrishnan, Sujay Bhattacharya',
    },
    {
      'title': 'Secondary Wake Mode Instability Analysis Behind Two Dimensional Cylinder Using OpenFOAM',
      'authors': 'Ravi Kant, Malay Verma, Ojas Satbhai, Anirudh Kulkarni, Ramesh Bhoraniya',
    },
    {
      'title': 'An Experimental and Discrete Element Method Study on the Effect of Coarse Particle Shape on Mixing and Segregation Dynamics',
      'authors': 'Sunil Kumar, Anshu Anand',
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
      'title': 'Forced convective heat transfer of nanofluids around a circular cylinder',
      'authors': 'Advait V Krishna, Anwesha Varma, Nidhul Kottayat',
    },
    {
      'title': 'Influence of Slip Models and Wall Surface Roughness on Micronozzle flow behaviour',
      'authors': 'Kishore S, Pulkit Pandey, Shine S R',
    },
    {
      'title': 'Optimizing Sorting of Micro-Sized Bio-Cells in Symmetric Serpentine Microchannel using Machine Learning',
      'authors': 'Sayan Karmakar, Md Safwan Mondal, Anish Pal, Sourav Sarkar',
    },
    {
      'title': 'Hydrophobicity Analysis of the Surfaces with Rectangular Micropillars using Pseudo Potential Multiphase Lattice Boltzmann Method',
      'authors': 'Ganesh Meshram',
    },
    {
      'title': 'Influence of Capillary Dimensions and Surface Tension on Capillary Emptying Dynamics',
      'authors': 'Anirban Roy, Avinash Kumar, Gopal Verma, Chirodeep Bakli',
    },
    {
      'title': 'Numerical investigation of droplets in a vertical minichannel subjected to standing acoustic waves',
      'authors': 'Anjan Mahapatra, Jeyapradhap Thirisangu, Karthick Subramani',
    },
  ],
};
final Map<String, List<Map<String, String>>> papers_6 = {
  "Bio-Fluid Mechanics": [
    {
      'title': 'Computational Fluid Dynamics of Digestion inside the Stomach',
      'authors': 'Sharun Kuhar, Jung-Hee Seo, Pankaj Pasricha, Rajat Mittal',
    },
    {
      'title': 'Micro-particle deposition patterns in the nasal cavity with different types of deviations',
      'authors': 'Kartika Tripathy, Ajay Bhandari',
    },
    {
      'title': 'A multiphase analysis of liquid plug deposition inside the simplified respiratory air tubes',
      'authors': 'Kishore Singh Patel, Sourav Sudhakaran, Md Asif, SAMEER KUMAR',
    },
    {
      'title': 'Drug Delivery to Trabecular Meshwork from Drug Reservoir attached to Intraocular Lens for Glaucoma Treatment',
      'authors': 'Pawan Kumar Pandey, Prateek Kumar Jha',
    },
    {
      'title': 'Assessment of Frictional Performance of Footwear Treads using a Computational Fluid Dynamics-based Model: Implications on slips and falls',
      'authors': 'Shubham Gupta, Arnab Chanda',
    },
    {
      'title': 'A Comparative Study of Hemodynamics in Eccentric and Axisymmetric Stenosis in Carotid Artery',
      'authors': 'Siddharth Sharma, Piru Mohan, Suman Chakraborty, Somnath Roy',
    },
  ],
};
final Map<String, List<Map<String, String>>> papers_7 = {
  "Propulsion and Power": [
    {
      'title': 'Spanwise tandem injection in supersonic crossflows',
      'authors': 'Spandan Maikap and Arun Kumar R',
    },
    {
      'title': 'Droplet Breakup of Shear Thinning Gels at low Weber numbers',
      'authors': 'Pankaj Niranjan, Srikanth Deti, Hrishikesh Gadgil, Kowsik Bodi',
    },
    {
      'title': 'RCCI Engine Performance and Emissions with Hydrogen and Diesel as Fuels',
      'authors': 'Jayasimha K, Meenakshi Reddy, Amba Prasad Rao',
    },
    {
      'title': 'Vortex Shedding past a Triangular Bluff body with Secondary Air flow: Role of Air Velocity and Temperature',
      'authors': 'Ankur Kumar, Shivesh Dwivedi, Shivram Pathak, Anubhav Sinha',
    },
    {
      'title': 'Investigation of Low Emission Reverse Flow Combustors',
      'authors': 'Shreshth Gupta, Ankit Lakhiwal, Kaushal Nishad, Vaibhav Arghode',
    },
    {
      'title': 'Thermodynamic Modelling of High-Pressure LOx-Methane Rocket Engine',
      'authors': 'Rahul Kumar, Abhishek Sharma, Arvind Vaidyanathan, T. John Tharakan',
    },
  ],
};
final Map<String, List<Map<String, String>>> papers_8 = {
  "Miscellaneous Topics": [
    {
      'title': 'CFD analysis of die at Non-Newtonian and Non-isothermal condition',
      'authors': 'Shashi Kant Verma',
    },
    {
      'title': 'Critical submergence of rectangular vertical intakes for non-axial flow condition',
      'authors': 'Himanshu Sharma, Yash Shrimali',
    },
    {
      'title': 'Numerical Modelling of Fire Development in the Cable Spreader Room of an NPP',
      'authors': 'Seik Mansoor Ali, Kanagalakshmi N',
    },
    {
      'title': 'Electro-thermal analysis of Li-ion cell',
      'authors': 'Mihir Pandya, Milan Vachhani, Dr. KALPAK SAGAR, Dr. Vipul Patel, Dr. Hemant Mehta',
    },
    {
      'title': 'Comparative Study of CeO2 Nanofluid and Water on Thermal Performance of PHP at Different Evacuation Pressure',
      'authors': 'Harsh Kumar Rai, Madhuri Madhuri, Prof. N.P. Yadav',
    },
    {
      'title': 'Nanofluid microchannel heat sink in smoothed particle hydrodynamics',
      'authors': 'Tapas Sil, Harisankar P C',
    },
  ],
};
final Map<String, List<Map<String, String>>> papers_9 = {
  "Miscellaneous Topics": [
    {
      'title': 'Efficient Aerosol Scavenging and Laser Decontamination for Decommissioning of Fukushima Daiichi Nuclear Power Station',
      'authors': 'Avadhesh Kumar Sharma, Zeeshan Ahmed, Shuichiro Miwa, Shunichi Suzuki, Ruicong XU',
    },
    {
      'title': 'Numerical Analysis of Heat Transfer Enhancement with Twisted Tape Insert in Tube Flow Using Nano Fluid',
      'authors': 'Gulshan Kumar, Jayanti Prabh Bharti, Gulshan Kumar, Nimai Pada Mandal',
    },
    {
      'title': 'Numerical Study of Gas Surface Interface Effects due to Transpiration in a Hypersonic Flow over a Blunt Body',
      'authors': 'Ahilan Appar, Aasheesh Bajpai, Rakesh Kumar',
    },
    {
      'title': 'Effect of Scavenging on Dynamics of Sodium Combustion Aerosols in a Closed Chamber',
      'authors': 'Shikha Sivakumar, A Jasmin Sudha, V Subramanian, B Venkatraman',
    },
    {
      'title': 'Experimental and CFD Investigation of shear on electrocoalescer performance.',
      'authors': 'Dr Pramod Kothmire, Pranav Lohar',
    },
    {
      'title': 'An evaluation of the human body\'s thermal sensations in hot and cold climates',
      'authors': 'Shashikant Das, Sajesh. M, Sudhakar Subudhi, Ramesh Kumar Singh',
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
                    SessionObject(room: "LHC 205", name: session.key, papers: session.value),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
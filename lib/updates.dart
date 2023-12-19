import 'package:cloud_firestore/cloud_firestore.dart';
import 'updateobj.dart'; // replace with your actual package
import 'package:flutter/material.dart';

Future<List<dynamic>> fetchUpdates() async {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final QuerySnapshot<Map<String, dynamic>> result =
      await firestore.collection('activity').orderBy('time_added', descending: true).get();
  final List<DocumentSnapshot<Map<String, dynamic>>> documents = result.docs;
 
  return documents;

}

class UpdatesPage extends StatefulWidget {
  @override
  _UpdatesPageState createState() => _UpdatesPageState();
}

class _UpdatesPageState extends State<UpdatesPage> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  Future<List<UpdateObject>>? _updates;
  @override
  void initState() {
    super.initState();
    _updates = fetchUpdates().then((value) => value.map((e) => UpdateObject(
          time: (e['time_added'] as Timestamp).toDate(), // assuming 'time' is a Timestamp
          subject: e['subject'], // assuming 'subject' is a String
          content: e['content'], // assuming 'content' is a String
        )).toList());

    print("Harry Potter");
    _updates?.then((value) => print(value));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0), // here the desired height
        child: AppBar(
          leading: Image.asset('assets/fmfp.png'),
          title: Text('Important updates'),
          elevation: 0,
        ),
        
      ),
      body: FutureBuilder<List<UpdateObject>>(
        future: _updates,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final UpdateObject update = snapshot.data![index];
                return UpdateObject(
                  time: update.time,
                  subject: update.subject,
                  content: update.content,
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
                Text(
                  'Loading updates...',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          );
        },
      ),
      backgroundColor: Colors.indigo,
    );
  }
}
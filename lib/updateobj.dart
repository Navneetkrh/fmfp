import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpdateObject extends StatefulWidget {
  final DateTime time;
  final String subject;
  final String content;

  const UpdateObject({
    Key? key,
    required this.time,
    required this.subject,
    required this.content,
  }) : super(key: key);

  @override
  _UpdateObjectState createState() => _UpdateObjectState();
}

class _UpdateObjectState extends State<UpdateObject> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color(0xFF1E2046), // dark blue color
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // align text to the left
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            widget.subject,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Text(
            widget.content,
            style: TextStyle(fontSize: 16, color: Colors.white70),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${widget.time.day}/${widget.time.month}/${widget.time.year} ${widget.time.hour}:${widget.time.minute}',
                  style: TextStyle(fontSize: 14, color: Colors.grey[300]),
                ),
                IconButton(
                  icon: Icon(Icons.delete, color: Colors.red),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        String password = '';
                        return AlertDialog(
                          title: Text('Confirm Deletion'),
                          content: TextField(
                            obscureText: true,
                            onChanged: (value) {
                              password = value;
                            },
                            decoration: InputDecoration(
                              labelText: 'Enter password',
                            ),
                          ),
                          actions: <Widget>[
                            TextButton(
                              child: Text('Confirm'),
                              onPressed: () async {
                                if (password == '3600') { // Replace 'yourPassword' with the actual password
                                  final querySnapshot = await FirebaseFirestore.instance
                                      .collection('activity')
                                      .where('subject', isEqualTo: widget.subject)
                                      .where('content', isEqualTo: widget.content)
                                      .get();
                                  for (final doc in querySnapshot.docs) {
                                    await doc.reference.delete();
                                  }
                                  Navigator.of(context).pop(); // Close the dialog
                                  setState(() {}); // Refresh the page
                                } else {
                                  // Show error message
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text('Incorrect password')),
                                  );
                                }
                              },
                            ),
                            TextButton(
                              child: Text('Cancel'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
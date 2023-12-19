import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'updates.dart'; // Import the UpdatesPage widget

class AdminPage extends StatefulWidget {
  @override
  _AdminPageState createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _subjectController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _addUpdate() async {
    if (_formKey.currentState!.validate()) {
      if (_passwordController.text == '3600') {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('Confirm Update'),
              content:Text('Are you sure you want to push this update?') ,
              actions: <Widget>[
                TextButton(
                  child: Text('Confirm'),
                  onPressed: () async {
                    await _firestore.collection('activity').add({
                      'subject': _subjectController.text,
                      'content': _contentController.text,
                      'time_added': Timestamp.now(),
                    });
                    _subjectController.clear();
                    _contentController.clear();
                    _passwordController.clear();
                    Navigator.pop(context);
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Update pushed successfully'),
                          content: Icon(Icons.check_circle, color: Colors.green, size: 48),
                          actions: <Widget>[
                            TextButton(
                              child: Text('Go to Updates Page'),
                              onPressed: () {
                                Navigator.pop(context);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => UpdatesPage()),
                                );
                              },
                            ),
                            TextButton(
                              child: Text('Ok'),
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
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Incorrect password')),
        );
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Page'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Push new update',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _subjectController,
                decoration: InputDecoration(labelText: 'Subject'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a subject';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _contentController,
                decoration: InputDecoration(labelText: 'Content'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter content';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _addUpdate,
                child: Text('Add Update'),
              ),
              SizedBox(height: 20),
              Text(
                'Warning: Please make sure the information is correct before pushing the update.',
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
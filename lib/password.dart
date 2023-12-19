import 'package:flutter/material.dart';
import 'admin.dart'; // Import the AdminPage widget

class PasswordPage extends StatefulWidget {
  @override
  _PasswordPageState createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  final _passwordController = TextEditingController();
  final _correctPassword = '3600';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (_passwordController.text == _correctPassword) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AdminPage()),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Incorrect password')),
                  );
                }
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
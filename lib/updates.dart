import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class UpdatesPage extends StatefulWidget {
  const UpdatesPage({super.key});

  @override
  State<UpdatesPage> createState() => _UpdatesPageState();
}

class _UpdatesPageState extends State<UpdatesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      leading: Image.asset('assets/fmfp.png'),
      title: Text('Important updates'),
      backgroundColor: Colors.indigo,
      elevation: 0,
    ),
    backgroundColor: Colors.indigo,
    );
  }
}

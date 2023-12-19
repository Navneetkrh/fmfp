import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpdateObject extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(subject, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Text(content, style: TextStyle(fontSize: 16)),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              '${time.day}/${time.month}/${time.year} ${time.hour}:${time.minute}',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
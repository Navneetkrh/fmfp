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
            subject,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Text(
            content,
            style: TextStyle(fontSize: 16, color: Colors.white70),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              '${time.day}/${time.month}/${time.year} ${time.hour}:${time.minute}',
              style: TextStyle(fontSize: 14, color: Colors.grey[300]),
            ),
          ),
        ],
      ),
    );
  }
}
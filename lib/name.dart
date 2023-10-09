import 'package:flutter/material.dart';

class name_page extends StatefulWidget {
  const name_page({super.key});

  @override
  State<name_page> createState() => _name_pageState();
}

class _name_pageState extends State<name_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Name page",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const Column(
        children: [
          Text(
            "Alarm",
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.left,
          ),
          Text(
            "Kiss List",
            style: TextStyle(
              fontSize: 16,
              color: Color.fromARGB(255, 34, 34, 34),
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}

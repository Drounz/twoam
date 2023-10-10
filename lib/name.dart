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
        backgroundColor: Colors.black,
        title: const Text(
          "Name page",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(children: [
          Padding(
            padding: EdgeInsets.only(right: 215),
            child: Text(
              "Who goes you?",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Text(
              "This determins the kind of questions you will be asked to answer ohh, no dull",
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 34, 34, 34),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

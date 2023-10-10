import 'package:flutter/material.dart';

class UserName extends StatefulWidget {
  const UserName({super.key});

  @override
  State<UserName> createState() => _UserNameState();
}

class _UserNameState extends State<UserName> {
  TextEditingController _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 64,
      child: TextFormField(
        controller: _nameController,
        decoration: InputDecoration(
          hintText: "any name nah name sha",
          labelText: 'Your guy name',
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}

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
            padding: EdgeInsets.only(right: 106),
            child: Text(
              "Who goes you?",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16.0),
            child: Text(
              "This determins the kind of questions you will be asked to answer ohh, no dull",
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 34, 34, 34),
              ),
            ),
          ),
          SizedBox(height: 48.0),
          Padding(
            padding: EdgeInsets.all(0.0),
            child: UserName(),
          )
        ]),
      ),
    );
  }
}
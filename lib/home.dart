import 'package:flutter/material.dart';
import 'package:twoam/data/alarms.dart';
import 'model/setalarms.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "12:30pm",
                      style:
                          TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "WAT",
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),

              // collaspes tiles for the alarm
              SizedBox(height: 40),

              Column(
                children: <Widget>[
                  ExpansionTile(
                    title: Text("Monday"),
                    subtitle: Text("3 alarms"),
                    backgroundColor: Color.fromARGB(29, 30, 48, 1),
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 16,
                                ),
                                child: Text(
                                  "12:30pm",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(height: 8),
                              Padding(
                                padding: EdgeInsets.only(right: 16, bottom: 8),
                                child: Text(
                                  "Gym",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ],
              ),
              //
              SizedBox(height: 26),
              //
              Column(
                children: <Widget>[
                  ExpansionTile(
                    title: Text("Monday"),
                    subtitle: Text("3 alarms"),
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Text(
                                  "12:30pm",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(height: 8),
                              Padding(
                                padding: EdgeInsets.only(right: 16),
                                child: Text(
                                  "Gym",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ],
              ),
              //
              SizedBox(height: 26),
              //
              Column(
                children: <Widget>[
                  ExpansionTile(
                    title: Text("Monday"),
                    subtitle: Text("3 alarms"),
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Text(
                                  "12:30pm",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(height: 8),
                              Padding(
                                padding: EdgeInsets.only(right: 16),
                                child: Text(
                                  "Gym",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ],
              ),
              //
              SizedBox(height: 26),
              //
              Column(
                children: <Widget>[
                  ExpansionTile(
                    title: Text("Monday"),
                    subtitle: Text("3 alarms"),
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Text(
                                  "12:30pm",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(height: 8),
                              Padding(
                                padding: EdgeInsets.only(right: 16),
                                child: Text(
                                  "Gym",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ],
              ),
              //
              SizedBox(
                height: 26,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

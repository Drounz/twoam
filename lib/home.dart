import 'package:flutter/material.dart';
import 'dart:async';
import 'package:intl/intl.dart';
import 'package:twoam/data/alarms.dart';
import 'package:twoam/setalarm.dart';
import 'model/setalarms.dart';
// import 'package:flutter_alarm_clock/flutter_alarm_clock.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String formattedTime = '';
  late Timer timer;

  @override
  void initState() {
    super.initState();

    // Initialize the time
    _updateTime();

    // Create a periodic timer to update the time every second
    timer = Timer.periodic(Duration(seconds: 1), (Timer t) {
      _updateTime();
    });
  }

  void _updateTime() {
    final now = DateTime.now();
    final formatter =
        DateFormat('HH:mm:ss'); // Customize the time format as needed
    formattedTime = formatter.format(now);
    setState(() {});
  }

  @override
  void dispose() {
    timer.cancel(); // Cancel the timer to free up resources
    super.dispose();
  }

  void _handleButtonPress(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => setAlarm(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 80),
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
                      formattedTime,
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
                        const Align(
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
                                  padding:
                                      EdgeInsets.only(right: 16, bottom: 8),
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
                        //
                        SizedBox(height: 8),
                        //
                        const Align(
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
                                  padding:
                                      EdgeInsets.only(right: 16, bottom: 8),
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

                        SizedBox(height: 8),

                        const Align(
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
                                  padding:
                                      EdgeInsets.only(right: 16, bottom: 8),
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

                        ElevatedButton(
                          onPressed: () {
                            _handleButtonPress(context);
                          },
                          child: Text("Add"),
                        ),
                      ]),
                ],
              ),
              //
              SizedBox(height: 26),
              //
              const Column(
                children: <Widget>[
                  ExpansionTile(
                    title: Text("Tuesday"),
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
              const Column(
                children: <Widget>[
                  ExpansionTile(
                    title: Text("Wednesday"),
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
              const Column(
                children: <Widget>[
                  ExpansionTile(
                    title: Text("Thursday"),
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

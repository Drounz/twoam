import 'package:flutter/material.dart';

class setAlarm extends StatefulWidget {
  const setAlarm({super.key});

  @override
  State<setAlarm> createState() => _setAlarmState();
}

class _setAlarmState extends State<setAlarm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Set alarm"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}

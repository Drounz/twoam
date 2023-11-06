import 'package:flutter/material.dart';
import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:twoam/main.dart';

Future<void> main() async {
  runApp(MyApp());
  await AndroidAlarmManager.initialize();
}

class SetAlarm extends StatefulWidget {
  const SetAlarm({super.key});

  @override
  State<SetAlarm> createState() => _SetAlarmState();
}

class _SetAlarmState extends State<SetAlarm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Set your alarm"),
        backgroundColor: Colors.black,
      ),
    );
  }
}

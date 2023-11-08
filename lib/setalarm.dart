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
    _getDateFromuser() async {
      DateTime? _pickerDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1999),
        lastDate: DateTime(2030),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Set your alarm"),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          IconButton(
              onPressed: () {
                print("hi Drounz");
                _getDateFromuser();
              },
              icon: Icon(Icons.calendar_month_rounded))
        ],
      ),
    );
  }
}

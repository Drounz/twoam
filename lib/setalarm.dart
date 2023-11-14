import 'package:flutter/material.dart';
import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

void main() async {
  runApp(MyApp());
  await AndroidAlarmManager.initialize();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SetAlarm(),
    );
  }
}

class SetAlarm extends StatefulWidget {
  const SetAlarm({Key? key}) : super(key: key);

  @override
  State<SetAlarm> createState() => _SetAlarmState();
}

class _SetAlarmState extends State<SetAlarm> {
  DateTime? _alarmDateTime;

  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  @override
  void initState() {
    super.initState();
    // Initialize flutterLocalNotificationsPlugin in initState
    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  }

  Future<void> _setAlarm() async {
    if (_alarmDateTime != null) {
      int alarmId = 1; // Set a unique ID for the alarm
      await AndroidAlarmManager.oneShotAt(
        _alarmDateTime!,
        alarmId,
        _onAlarm,
        exact: true,
        allowWhileIdle: true,
      );

      print('Alarm set for $_alarmDateTime');
    } else {
      print('Please select a date and time for the alarm.');
    }
  }

  Future<void> _onAlarm(int alarmId) async {
    print('Alarm triggered with ID: $alarmId');

    await _showNotification();

    // You can add additional logic here
  }

  Future<void> _showNotification() async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      'Bananas', 'and drinks',
      importance: Importance.max,
      priority: Priority.high,
      playSound: true, // Make sure to enable soun
    );

    const NotificationDetails platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);

    await flutterLocalNotificationsPlugin.show(
      0,
      'Alarm!',
      'It\'s time!',
      platformChannelSpecifics,
    );
  }

  Future<void> _showDateTimePicker() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1999),
      lastDate: DateTime(2030),
    );

    if (pickedDate != null) {
      TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
      );

      if (pickedTime != null) {
        _alarmDateTime = DateTime(
          pickedDate.year,
          pickedDate.month,
          pickedDate.day,
          pickedTime.hour,
          pickedTime.minute,
        );

        print('Selected date and time: $_alarmDateTime');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Set your alarm"),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          IconButton(
            onPressed: _showDateTimePicker,
            icon: Icon(Icons.calendar_month_rounded),
          ),
          ElevatedButton(
            onPressed: _setAlarm,
            child: Text('Set Alarm'),
          ),
        ],
      ),
    );
  }
}

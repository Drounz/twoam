import 'package:flutter/material.dart';

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
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "12:30pm",
                    style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "WAT",
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),

            // collaspes tiles for the alarm
            // SizedBox(height:24),

            Column(
              children: <Widget>[
                ExpansionTile(
                  title: Text("Monday"),
                  subtitle: Text("3 alarms"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ExpansionTileExample {}

import 'package:flutter/material.dart';
import 'package:twoam/home.dart';
import 'package:twoam/name.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

void _handleButtonPress(BuildContext context) {
  Navigator.push(
    context,
    (MaterialPageRoute(
      builder: (context) => name_page(),
    )),
  );
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Image.asset(
                    "assets/images/Logomuckpng.png",
                    width: 400,
                    height: 400,
                  ),
                ),
                const Column(
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
                // here is where the button of the code goes in that allows me to chage the code bith
                ElevatedButton.icon(
                  onPressed: () {
                    _handleButtonPress(context);
                  },
                  label: const Text("LFG"),
                  icon: const Icon(Icons.arrow_forward),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(372, 64),
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:qibla_finder/Screens/qiblah_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: ((context) => const QiblahScreen()),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Padding(
            padding:
                EdgeInsets.only(top: 200, bottom: 100, left: 50, right: 50),
            child: Center(
              child: Image(
                image: AssetImage('images/qibla.png'),
                color: Colors.blueGrey,
              ),
            ),
          ),
          Text(
            'Welcome To Qibla Finder App',
            style: TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}

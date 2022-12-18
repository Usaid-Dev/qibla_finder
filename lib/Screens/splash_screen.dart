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
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

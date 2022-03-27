import 'package:flutter/material.dart';
import 'package:solar_system/screens/home.dart';

void main() {
  runApp(const SolarSystem());
}

class SolarSystem extends StatelessWidget {
  const SolarSystem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}


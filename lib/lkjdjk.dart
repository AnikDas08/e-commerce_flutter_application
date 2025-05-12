import 'package:flutter/material.dart';

class Anik extends StatefulWidget {
  const Anik({super.key});

  @override
  State<Anik> createState() => _AnikState();
}

class _AnikState extends State<Anik> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "images/slider1.png"
        ),
      ),
    );
  }
}

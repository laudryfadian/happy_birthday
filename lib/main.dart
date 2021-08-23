import 'package:floating_dots/floating_dots.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: Birthday(),
    );
  }
}

class Birthday extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            child: Image.asset('assets/hbd.png'),
          ),
          FloatingDotGroup(
            opacity: 0.5,
            speed: DotSpeed.mixed,
            size: DotSize.random,
            trajectory: Trajectory.straight,
            colors: [
              Colors.redAccent,
              Colors.yellowAccent,
              Colors.greenAccent,
              Colors.deepOrange,
              Colors.purpleAccent,
              Colors.lightGreenAccent
            ],
            number: 35,
            direction: Direction.up,
          )
        ],
      ),
    );
  }
}

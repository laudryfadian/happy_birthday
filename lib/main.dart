import 'package:floating_dots/floating_dots.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: Gift(),
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

class Gift extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 10.0),
            child: Text(
              "Buka cepettt",
              style: TextStyle(fontSize: 40.0),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => Birthday()),
                (Route<dynamic> route) => false,
              );
            }, // Handle your callback.
            splashColor: Colors.brown.withOpacity(0.5),
            child: Ink(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/oke.gif'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ],
      ))),
    );
  }
}

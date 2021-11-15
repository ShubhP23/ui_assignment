import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List images = [
  {"img": "assets/learning.png"},
  {"img": "assets/Webinar-pana.png"},
  {"img": "assets/Webinar-cuate.png"}
];

// ignore: use_key_in_widget_constructors
class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7461DE),
      body: Column(
        children: [
          SizedBox(
            height: 500.0,
            child: Stack(
              children: [
                Image.asset(
                  'assets/triangle_dots.png',
                  color: Colors.white24,
                ),
                Positioned(
                  left: 20.0,
                  right: 20.0,
                  top: 100.0,
                  child: Image.asset('assets/learning.png'),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.0),
            child: Text(
              'Get connected to a live tutor in just 60 seconds!',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 80.0),
          MaterialButton(
            color: const Color(0xFF7363DF),
            minWidth: MediaQuery.of(context).size.width * .65,
            height: MediaQuery.of(context).size.height / 15,
            elevation: 6,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35.0)),
            onPressed: () {
              setState(() {});
            },
            child: const Text(
              'Get started',
              style: TextStyle(color: Colors.white, fontSize: 25.0),
            ),
          )
        ],
      ),
    );
  }
}

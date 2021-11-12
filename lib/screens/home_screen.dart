import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum _buttonSelected { doubtSolver, onlineTutor }

// ignore: use_key_in_widget_constructors
class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  _buttonSelected? clicked;

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const CircleAvatar(
                            radius: 60.0,
                            child: Icon(Icons.person),
                          ),
                          const SizedBox(width: 18.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Shubh Poddar'.toUpperCase(),
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                              const Text(
                                'Unique id: SP007',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.orange,
                                ),
                              ),
                              const Text.rich(
                                TextSpan(
                                  style: TextStyle(
                                    fontSize: 16.0,
                                  ),
                                  children: <InlineSpan>[
                                    WidgetSpan(
                                      child: Icon(
                                        Icons.brightness_1,
                                        size: 10.0,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Offline',
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 30.0),
                      const Text(
                        'About:',
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 15.0),
                      const Text(
                        'Education Qualification:',
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 15.0),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text(
                            'Communication Language: ',
                            style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          // ignore: prefer_const_constructors
                          SizedBox(width: 10.0),
                          const Text('English, Hindi'),
                        ],
                      ),
                      const SizedBox(height: 15.0),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text(
                            'Board:',
                            style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          // ignore: prefer_const_constructors
                          const SizedBox(width: 10.0),
                          const Text('CBSE, TBSE'),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40.0),
              ],
            ),
            const SizedBox(height: 35.0),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: 416.0,
                  decoration: const BoxDecoration(
                    color: Color(0xFF7363DF),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Material(
                        color: const Color(0xFF7363DF),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                        ),
                        elevation: 4.0,
                        shadowColor: Colors.black54,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              MaterialButton(
                                shape: clicked == _buttonSelected.doubtSolver
                                    ? const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.white, width: 3.0))
                                    : const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFF7363DF),
                                        ),
                                      ),
                                onPressed: () {
                                  setState(() {
                                    clicked = _buttonSelected.doubtSolver;
                                  });
                                },
                                child: const Text(
                                  'Doubt Solver',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),
                              MaterialButton(
                                shape: clicked == _buttonSelected.onlineTutor
                                    ? const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.white, width: 3.0))
                                    : const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFF7363DF),
                                        ),
                                      ),
                                onPressed: () {
                                  setState(() {
                                    clicked = _buttonSelected.onlineTutor;
                                  });
                                },
                                // highlightColor: Colors.white,
                                child: const Text(
                                  'Online Tutor',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    // decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 30.0, left: 50.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Text(
                                'Total Sessions: 2',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(height: 10.0),
                              const Text.rich(
                                TextSpan(
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w600),
                                  children: [
                                    TextSpan(
                                      text: 'Avg Rating: 3.5',
                                    ),
                                    WidgetSpan(
                                      child: Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10.0),
                              const Text(
                                'Class:',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(height: 10.0),
                              const Text(
                                'Subject:',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(70.0),
                  child: MaterialButton(
                    onPressed: () {},
                    child: const Text.rich(
                      TextSpan(
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 23.0,
                            fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                            text: 'Book now',
                          ),
                          WidgetSpan(
                            child: Icon(
                              Icons.arrow_forward_sharp,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    color: const Color(0xFF7363DF),
                    minWidth: MediaQuery.of(context).size.width * .70,
                    height: MediaQuery.of(context).size.height / 12,
                    elevation: 6,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          35.0,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

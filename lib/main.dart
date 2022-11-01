// ignore_for_file: use_key_in_widget_constructors

import 'package:abc/abc.dart';
import 'package:abc/wid123.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() => runApp(MaterialApp(
      home: AnimatedSplashScreen(
        splash: Image.asset("assets/images/animated.png"),
        backgroundColor: Colors.black,
        nextScreen: Home(),
        duration: 2500,
        splashTransition: SplashTransition.scaleTransition,
      ),
      debugShowCheckedModeBanner: false,
    ));

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final body = [
    const Abc(),
    const Wid123(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "Learn ABC 123",
            style: TextStyle(fontWeight: FontWeight.w900),
          ),
          centerTitle: false,
          leadingWidth: 12,
          elevation: 0,
          backgroundColor: Colors.blue,
          leading: Container(
            margin: const EdgeInsets.only(left: 20),
          ),
          actions: <Widget>[
            Container(
              margin: const EdgeInsets.only(right: 10),
              child: const FittedBox(
                fit: BoxFit.cover,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/animated.png"),
                  backgroundColor: Colors.black,
                ),
              ),
            )
          ]),
      body: Center(
        child: body[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.navigation),
              label: "abc",
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.navigation),
              label: "123",
              backgroundColor: Colors.blue)
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

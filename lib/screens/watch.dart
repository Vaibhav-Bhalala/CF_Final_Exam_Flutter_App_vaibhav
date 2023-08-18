import 'dart:math';

import 'package:flutter/material.dart';

import '../utils/globals.dart';

class WatchScreen extends StatefulWidget {
  const WatchScreen({super.key});

  @override
  State<WatchScreen> createState() => _WatchScreenState();
}

class _WatchScreenState extends State<WatchScreen> {
  int h = 0;
  int m = 0;
  int s = 0;

  MyWatch() {
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        h = DateTime.now().hour % 12;
        m = DateTime.now().minute;
        s = DateTime.now().second;
      });
      MyWatch();
    });
  }

  @override
  void initState() {
    super.initState();
    MyWatch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "TIME",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Globals.bgcolor,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('tasks');
        },
        child: Text(
          "NEXT",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 16, color: Colors.brown),
        ),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Transform.scale(
              scale: 10,
              child: CircularProgressIndicator(
                color: Colors.pinkAccent,
                strokeWidth: 3,
                value: s.toDouble() / 60,
              ),
            ),
            Transform.scale(
              scale: 8.8,
              child: CircularProgressIndicator(
                color: Colors.blueAccent,
                strokeWidth: 2,
                value: m.toDouble() / 60,
              ),
            ),
            Transform.scale(
              scale: 7.7,
              child: CircularProgressIndicator(
                color: Colors.lightGreenAccent,
                strokeWidth: 3,
                value: h.toDouble() / 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

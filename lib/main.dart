import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/screens/homepage.dart';
import 'package:todo_app/screens/input_task.dart';
import 'package:todo_app/screens/splash_screen.dart';
import 'package:todo_app/screens/watch.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blueAccent),
    routes: {
      '/': (context) => SplashScreen(),
      'home': (context) => HomePage(),
      'watch': (context) => WatchScreen(),
      'tasks': (context) => Tasks(),
    },
  ));
}

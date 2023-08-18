import 'package:flutter/material.dart';
import 'package:todo_app/utils/globals.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffededed),
        appBar: AppBar(
          backgroundColor: Globals.bgcolor,
          title: Text(
            "My Day",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Good Morning",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Whats Your Plan For Today?",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.withOpacity(0.75)),
              ),
              SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'watch');
                },
                child: CircleAvatar(
                  backgroundColor: Globals.bgcolor,
                  radius: 100,
                  child: Center(
                    child: Text(
                      "+",
                      style: TextStyle(fontSize: 100, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

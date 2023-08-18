import 'package:flutter/material.dart';

import '../../utils/globals.dart';

class Tasks extends StatefulWidget {
  const Tasks({super.key});

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  List AllTextFields = [];
  List<TextEditingController> AllController = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    AllController.add(TextEditingController());
    AllController.add(TextEditingController());

    AllTextFields.add(Row());
    AllTextFields.add(Row());
  }

  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffededed),
      appBar: AppBar(
        backgroundColor: Globals.bgcolor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        title: Text(
          "Tasks",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: h * 0.27,
                width: w * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.tealAccent.withOpacity(0.30),
                    border: Border.all(color: Colors.grey)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        "9:00 A.M.",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ...AllTextFields.map(
                        (e) => getTextFiled(
                          i: AllTextFields.indexOf(
                            (e),
                          ),
                        ),
                      ).toList(),
                      SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {
                          setState(
                            () {
                              AllController.add(TextEditingController());
                              AllTextFields.add(
                                  getTextFiled(i: AllTextFields.length));
                            },
                          );
                        },
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Icon(
                            Icons.add,
                            size: 50,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: h * 0.27,
                width: w * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.tealAccent.withOpacity(0.30),
                    border: Border.all(color: Colors.grey)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        "10:00 A.M.",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ...AllTextFields.map(
                        (e) => getTextFiled(
                          i: AllTextFields.indexOf(
                            (e),
                          ),
                        ),
                      ).toList(),
                      SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {
                          setState(
                            () {
                              AllController.add(TextEditingController());
                              AllTextFields.add(
                                  getTextFiled(i: AllTextFields.length));
                            },
                          );
                        },
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Icon(
                            Icons.add,
                            size: 50,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: h * 0.27,
                width: w * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.tealAccent.withOpacity(0.30),
                    border: Border.all(color: Colors.grey)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        "11:00 A.M.",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ...AllTextFields.map(
                        (e) => getTextFiled(
                          i: AllTextFields.indexOf(
                            (e),
                          ),
                        ),
                      ).toList(),
                      SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {
                          setState(
                            () {
                              AllController.add(TextEditingController());
                              AllTextFields.add(
                                  getTextFiled(i: AllTextFields.length));
                            },
                          );
                        },
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Icon(
                            Icons.add,
                            size: 50,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: h * 0.27,
                width: w * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.tealAccent.withOpacity(0.30),
                    border: Border.all(color: Colors.grey)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        "12:00 A.M.",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ...AllTextFields.map(
                        (e) => getTextFiled(
                          i: AllTextFields.indexOf(
                            (e),
                          ),
                        ),
                      ).toList(),
                      SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {
                          setState(
                            () {
                              AllController.add(TextEditingController());
                              AllTextFields.add(
                                  getTextFiled(i: AllTextFields.length));
                            },
                          );
                        },
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Icon(
                            Icons.add,
                            size: 50,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: h * 0.27,
                width: w * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.tealAccent.withOpacity(0.30),
                    border: Border.all(color: Colors.grey)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        "01:00 P.M.",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ...AllTextFields.map(
                        (e) => getTextFiled(
                          i: AllTextFields.indexOf(
                            (e),
                          ),
                        ),
                      ).toList(),
                      SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {
                          setState(
                            () {
                              AllController.add(TextEditingController());
                              AllTextFields.add(
                                  getTextFiled(i: AllTextFields.length));
                            },
                          );
                        },
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Icon(
                            Icons.add,
                            size: 50,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: h * 0.27,
                width: w * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.tealAccent.withOpacity(0.30),
                    border: Border.all(color: Colors.grey)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        "02:00 P.M.",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ...AllTextFields.map(
                        (e) => getTextFiled(
                          i: AllTextFields.indexOf(
                            (e),
                          ),
                        ),
                      ).toList(),
                      SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {
                          setState(
                            () {
                              AllController.add(TextEditingController());
                              AllTextFields.add(
                                  getTextFiled(i: AllTextFields.length));
                            },
                          );
                        },
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Icon(
                            Icons.add,
                            size: 50,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: h * 0.27,
                width: w * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.tealAccent.withOpacity(0.30),
                    border: Border.all(color: Colors.grey)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        "03:00 P.M.",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ...AllTextFields.map(
                        (e) => getTextFiled(
                          i: AllTextFields.indexOf(
                            (e),
                          ),
                        ),
                      ).toList(),
                      SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {
                          setState(
                            () {
                              AllController.add(TextEditingController());
                              AllTextFields.add(
                                  getTextFiled(i: AllTextFields.length));
                            },
                          );
                        },
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Icon(
                            Icons.add,
                            size: 50,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: h * 0.27,
                width: w * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.tealAccent.withOpacity(0.30),
                    border: Border.all(color: Colors.grey)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        "04:00 P.M.",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ...AllTextFields.map(
                        (e) => getTextFiled(
                          i: AllTextFields.indexOf(
                            (e),
                          ),
                        ),
                      ).toList(),
                      SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {
                          setState(
                            () {
                              AllController.add(TextEditingController());
                              AllTextFields.add(
                                  getTextFiled(i: AllTextFields.length));
                            },
                          );
                        },
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Icon(
                            Icons.add,
                            size: 50,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: h * 0.27,
                width: w * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.tealAccent.withOpacity(0.30),
                    border: Border.all(color: Colors.grey)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        "05:00 P.M.",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ...AllTextFields.map(
                        (e) => getTextFiled(
                          i: AllTextFields.indexOf(
                            (e),
                          ),
                        ),
                      ).toList(),
                      SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {
                          setState(
                            () {
                              AllController.add(TextEditingController());
                              AllTextFields.add(
                                  getTextFiled(i: AllTextFields.length));
                            },
                          );
                        },
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Icon(
                            Icons.add,
                            size: 50,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: h * 0.27,
                width: w * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.tealAccent.withOpacity(0.30),
                    border: Border.all(color: Colors.grey)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        "06:00 P.M.",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ...AllTextFields.map(
                        (e) => getTextFiled(
                          i: AllTextFields.indexOf(
                            (e),
                          ),
                        ),
                      ).toList(),
                      SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {
                          setState(
                            () {
                              AllController.add(TextEditingController());
                              AllTextFields.add(
                                  getTextFiled(i: AllTextFields.length));
                            },
                          );
                        },
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Icon(
                            Icons.add,
                            size: 50,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: h * 0.27,
                width: w * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.tealAccent.withOpacity(0.30),
                    border: Border.all(color: Colors.grey)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        "07:00 P.M.",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ...AllTextFields.map(
                        (e) => getTextFiled(
                          i: AllTextFields.indexOf(
                            (e),
                          ),
                        ),
                      ).toList(),
                      SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {
                          setState(
                            () {
                              AllController.add(TextEditingController());
                              AllTextFields.add(
                                  getTextFiled(i: AllTextFields.length));
                            },
                          );
                        },
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Icon(
                            Icons.add,
                            size: 50,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: h * 0.27,
                width: w * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.tealAccent.withOpacity(0.30),
                    border: Border.all(color: Colors.grey)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        "08:00 P.M.",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ...AllTextFields.map(
                        (e) => getTextFiled(
                          i: AllTextFields.indexOf(
                            (e),
                          ),
                        ),
                      ).toList(),
                      SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {
                          setState(
                            () {
                              AllController.add(TextEditingController());
                              AllTextFields.add(
                                  getTextFiled(i: AllTextFields.length));
                            },
                          );
                        },
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Icon(
                            Icons.add,
                            size: 50,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: h * 0.27,
                width: w * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.tealAccent.withOpacity(0.30),
                    border: Border.all(color: Colors.grey)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        "09:00 P.M.",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ...AllTextFields.map(
                        (e) => getTextFiled(
                          i: AllTextFields.indexOf(
                            (e),
                          ),
                        ),
                      ).toList(),
                      SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {
                          setState(
                            () {
                              AllController.add(TextEditingController());
                              AllTextFields.add(
                                  getTextFiled(i: AllTextFields.length));
                            },
                          );
                        },
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Icon(
                            Icons.add,
                            size: 50,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: h * 0.27,
                width: w * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.tealAccent.withOpacity(0.30),
                    border: Border.all(color: Colors.grey)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        "10:00 P.M.",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ...AllTextFields.map(
                        (e) => getTextFiled(
                          i: AllTextFields.indexOf(
                            (e),
                          ),
                        ),
                      ).toList(),
                      SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {
                          setState(
                            () {
                              AllController.add(TextEditingController());
                              AllTextFields.add(
                                  getTextFiled(i: AllTextFields.length));
                            },
                          );
                        },
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Icon(
                            Icons.add,
                            size: 50,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: h * 0.27,
                width: w * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.tealAccent.withOpacity(0.30),
                    border: Border.all(color: Colors.grey)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        "11:00 P.M.",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ...AllTextFields.map(
                        (e) => getTextFiled(
                          i: AllTextFields.indexOf(
                            (e),
                          ),
                        ),
                      ).toList(),
                      SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {
                          setState(
                            () {
                              AllController.add(TextEditingController());
                              AllTextFields.add(
                                  getTextFiled(i: AllTextFields.length));
                            },
                          );
                        },
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Icon(
                            Icons.add,
                            size: 50,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: h * 0.27,
                width: w * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.tealAccent.withOpacity(0.30),
                    border: Border.all(color: Colors.grey)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        "12:00 P.M.",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ...AllTextFields.map(
                        (e) => getTextFiled(
                          i: AllTextFields.indexOf(
                            (e),
                          ),
                        ),
                      ).toList(),
                      SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {
                          setState(
                            () {
                              AllController.add(TextEditingController());
                              AllTextFields.add(
                                  getTextFiled(i: AllTextFields.length));
                            },
                          );
                        },
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Icon(
                            Icons.add,
                            size: 50,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row getTextFiled({required int i}) {
    return Row(children: [
      Expanded(
        flex: 12,
        child: TextField(
          controller: AllController[i],
          decoration: InputDecoration(
            hintText: "Enter Your Tasks",
            hintStyle:
                TextStyle(color: Colors.grey.withOpacity(0.80), fontSize: 18),
          ),
        ),
      ),
      Expanded(
        flex: 2,
        child: IconButton(
          onPressed: () {
            setState(
              () {
                AllController.removeAt(i);
                AllTextFields.removeAt(i);
              },
            );
          },
          icon: Icon(
            Icons.delete,
            color: Colors.grey,
            size: 40,
          ),
        ),
      ),
    ]);
  }
}

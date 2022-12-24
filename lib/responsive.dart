
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:home_work/home_work_two.dart';
import 'package:home_work/navbar.dart';

class HomeworkTwo extends StatefulWidget {
  const HomeworkTwo({Key? key}) : super(key: key);

  @override
  _HomeworkTwoState createState() => _HomeworkTwoState();
}

class _HomeworkTwoState extends State<HomeworkTwo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color.fromRGBO(190, 20, 50, 1),
                Color.fromRGBO(50, 15, 56,1)]
            )
          ),
          child: ListView(
            children: [
              Navbar(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical:20,horizontal: 40),
                child: LandingPage(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

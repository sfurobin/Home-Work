

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_work_five.dart';
import 'home_work_two.dart';
import 'custom_navbar.dart';
import 'home_work_one.dart';
import 'responsive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blueGrey,
          body: Container(
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 40,),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeworkOne()));
                  },
                      child: Text("Home Work One",style: Madeline,)),

                  SizedBox(height: 40,),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeworkTwo()));
                  },
                      child: Text("Responsive Design",style: Madeline,)),
                  SizedBox(height: 40,),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeworkTree()));
                  },
                      child: Text("Home Work Three",style: Madeline,)),

                  SizedBox(height: 40,),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LandingPage()));
                  },
                      child: Text("E-commerce4",style: Madeline,)),

                  SizedBox(height: 40,),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeworkFive()));
                  },
                      child: Text("E-commerce5",style: Madeline,)),
                ],
              ),
            ),
          ),
        ));
  }
}

const Madeline = TextStyle(
    fontFamily: "Madeline",
    fontSize: 20,
    color: Colors.white,
    fontWeight: FontWeight.w500
);
const Cavergiz = TextStyle(
    fontFamily: "Cavergiz",
    fontSize: 25,
    color: Colors.white,
    fontWeight: FontWeight.w500
);
const Taiheritage = TextStyle(
    fontFamily: "Taiheritage",
    fontSize: 25,
    color: Colors.white,
    fontWeight: FontWeight.w500
);

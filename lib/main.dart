

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_work_five.dart';
import 'home_work_four.dart';
import 'home_work_one.dart';
import 'home_work_tree.dart';
import 'home_work_two.dart';

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
                      child: Text("E-commerce1",style: Madeline,)),

                  SizedBox(height: 40,),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeworkTwo()));
                  },
                      child: Text("E-commerce2",style: Madeline,)),
                  SizedBox(height: 40,),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeworkTree()));
                  },
                      child: Text("E-commerce3",style: Madeline,)),

                  SizedBox(height: 40,),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeworkFour()));
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
    fontSize: 35,
    fontWeight: FontWeight.w500
);
const Cavergiz = TextStyle(
    fontFamily: "Cavergiz",
    fontSize: 25,
    fontWeight: FontWeight.w500
);

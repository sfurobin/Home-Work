import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  List<Widget> pageChilden(){
    return [Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Text("Softwere \nDevelopers",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Text("We have taken each and every project handed over to us as a challeng,which has helped us achieve a high project succes rate.",
                style: TextStyle(fontSize: 16,color: Colors.white),
            ),
          ),
          MaterialButton(onPressed: (){},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical:15,horizontal: 15),
              child: Text("Our Packages", style: TextStyle(fontSize: 14,color: Colors.red)),
            ),
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          )
        ],
      ),
    ),
      Row(
        children: [
          Image.asset("assets/image/pexels-tranmautritam-326503.jpg",height: 350,width: 300,),
        ],
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constrainsts){
         if(constrainsts.maxWidth> 800){
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChilden(),
          );
        }else{
          return Column(
            children: pageChilden(),
          );
        }
      },
    );
  }
}

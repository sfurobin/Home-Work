import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:home_work/main.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constrainsts){
       /* if(constrainsts.maxWidth> 1200){
          return Webdesign();
        }else*/ if (constrainsts.maxWidth > 600 && constrainsts.maxWidth<1500){
          return Webdesign();
        }else{
          return Mobiledesign();
        }
      },
    );
  }
}

class Webdesign extends StatelessWidget {
  const Webdesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
              child: Text("Flutter Studio",style: Taiheritage,),
            ),
            Row(
              children: [
                Text("Home",style: Madeline,),
                SizedBox(width: 30,),
                Text("About us",style: Madeline,),
                SizedBox(width: 30,),
                Text("Protfolio",style: Madeline,),
                SizedBox(width: 30,),
                MaterialButton(onPressed: (){},
                  child: Text("Get Started"),
                  color: Colors.pink,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Mobiledesign extends StatelessWidget {
  const Mobiledesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        child: Column(
          children: [
            Text("Flutter Studio",style: Taiheritage,),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Home",style: Madeline,),
                  SizedBox(width: 30,),
                  Text("About Us",style: Madeline,),
                  SizedBox(width: 30,),
                  Text("Protfolio",style: Madeline,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

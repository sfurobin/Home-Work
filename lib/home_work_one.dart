import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home_work/home_work_five.dart';
import 'package:home_work/home_work_four.dart';
import 'package:home_work/home_work_tree.dart';
import 'package:home_work/home_work_two.dart';
import 'package:home_work/main.dart';

import 'home_work_six.dart';
import 'home_work_two.dart';
import 'home_work_tree.dart';
import 'home_work_four.dart';
import 'home_work_five.dart';


class HomeworkOne extends StatefulWidget {
  const HomeworkOne({Key? key}) : super(key: key);

  @override
  _HomeworkOneState createState() => _HomeworkOneState();
}
late PageController _pageController;
int _pageIndex = 1;
late List<Widget> _screenList;

class _HomeworkOneState extends State<HomeworkOne> {


  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
    _screenList = [
      HomeworkTree(),
      HomeworkTwo(),
      HomeworkFour(),
      HomeworkFive(),
      HomeWorkSix(),

    ];
  }

  _setPage(int index) {
    setState(() {
      _pageController.jumpToPage(index);
      _pageIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
      if (_pageIndex!= 1) {
        _setPage(1);
        return false;
      } else {
        return true;
      }
    },

    child: SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        bottomNavigationBar: Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
          child: Row(
            children: [
              BottomNavigationBarItem(image: "assets/icon/wifilive.png",
                  isselect: _pageIndex == 0,
                  onTap: () => _setPage(0)),
              BottomNavigationBarItem(image: "assets/icon/book.png",
                  isselect: _pageIndex == 1,
                  onTap: () => _setPage(1)),
              BottomNavigationBarItem(image:"assets/icon/home.png",
                  isselect: _pageIndex == 2,
                  onTap: () => _setPage(2)),
              BottomNavigationBarItem(image: "assets/icon/chat1.png",
                  isselect: _pageIndex == 3,
                  onTap: () => _setPage(3)),
              BottomNavigationBarItem(image: "assets/icon/video1.png",
                  isselect: _pageIndex == 4,
                  onTap: () => _setPage(4)),
            ],
          ),
        ),

      body: PageView.builder(
        controller: _pageController,
          itemCount: _screenList.length,
          itemBuilder: (BuildContext context, int index){
            return _screenList[index];
          }),
      ),
    )
    );
  }
}


class BottomNavigationBarItem extends StatelessWidget {
  final image;
  final bool isselect;
  late Function() onTap;
  BottomNavigationBarItem({Key? key, this.image, required this.isselect,required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell (
          onTap:() {
            onTap();
          },
          child: Image.asset(image,height: 30,width: 30,)
        )
    );
  }
}


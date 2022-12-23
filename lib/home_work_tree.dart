import 'package:flutter/material.dart';

import 'main.dart';

class HomeworkTree extends StatefulWidget {
  const HomeworkTree({Key? key}) : super(key: key);

  @override
  _HomeworkTreeState createState() => _HomeworkTreeState();
}

class _HomeworkTreeState extends State<HomeworkTree> {

  final Textcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 40,
                width: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/icon/menu (1).png"),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 2),
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://media.licdn.com/dms/image/C5603AQESCxB3MmNZvw/profile-displayphoto-shrink_200_200/0/1659156651726?e=1677110400&v=beta&t=QEZ6HCB_xvoAARz4EWgbflsX1BsMzOE8ko9v_Jko8LE",
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome back,",
                    style: Cavergiz,
                  ),
                  Text(
                    "Partho Parekh",
                    style: Madeline,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width/1.4,
                      child: TextField(
                        controller: Textcontroller,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: ("Search here"),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Image.asset(
                      "assets/icon/8951086.png",
                      color: Colors.white70,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Choose Subjects",
                    style: Cavergiz,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.teal,
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Image.asset(
                              "assets/icon/8688311.png",
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text("Englesh")
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.green[300],
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Image.asset(
                              "assets/icon/physics.png",
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text("Physics")
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.blue[300],
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Image.asset(
                              "assets/icon/science.png",
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text("Science")
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.grey[900],
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Image.asset(
                              "assets/icon/arabic1.png",
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text("Arabic")
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.indigoAccent,
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Image.asset(
                              "assets/icon/hindi.png",
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text("Hindi")
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Live Classes",
                    style: Cavergiz,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 130,
                          width: 200,
                          decoration: BoxDecoration(
                              color: Colors.blue[300],
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Image.network(
                                "https://scontent.fdac136-1.fna.fbcdn.net/v/t"
                                    "39.30808-6/244257758_3010868525844320_3538119873867245103_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEeABep9-jWSjyyQct-wjsiZ4Q"
                                    "Pb_H-wZlnhA9v8f7BmVPhWdQRzqXEejefASGtzKn62ftZ64BpEgTqqXleV"
                                    "Neb&_nc_ohc=jhwEpw_QqXkAX8t6x5e&_nc_ht=scontent.fdac136-1.fna&o"
                                    "h=00_AfCCVjBj78ghd-l6WyBJfg0C4GheWtc27cwZjuOo"
                                    "-glPgQ&oe=63A9788E",
                                fit: BoxFit.cover),
                          ),
                        ),
                        Text(
                          "Everything you need to know",
                          style: TextStyle(fontSize: 16),),
                        Text(
                          "about Global Warming",
                          style: TextStyle(fontSize: 16),),
                        Text("by jamal Uddin",),
                      ],
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 130,
                          width: 200,
                          decoration: BoxDecoration(
                              color: Colors.blue[300],
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Image.network(
                                "https://scontent.fdac136-1.fna.fbcdn.net/v/t39.30808-6/277523393_1578855762472708_3368906915033452956_n.jpg?_nc_cat="
                                    "101&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHEIV9Y_iwk_3V94DZX83otgq2FHbmKc3WCrYUduYpzda4OA8PkesvDDiMiDolxtBOgu3z5b40x0xH55uydbFZw&_nc_ohc="
                                    "v6E7XiZ3EkIAX_BCGDr&_nc_ht=scontent.fdac136-1."
                                    "fna&oh=00_AfAj8Ied3KzyvsSsUXA7VgeWYzf4yyBm4TP9Xj3q7Img3g&oe=63A99C85",
                                fit: BoxFit.cover),
                          ),
                        ),
                        Text(
                          "Virus Pandamic: Things you",
                          style: TextStyle(fontSize: 16),),
                        Text(
                          "should know from History",
                          style: TextStyle(fontSize: 16),),
                        Text("by Shamim Ahmed",),
                      ],
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 130,
                          width: 200,
                          decoration: BoxDecoration(
                              color: Colors.blue[300],
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Image.network(
                                "https://scontent.fdac136-1.fna.fbcdn.net/v/t39.30808-6/300668879_1128055708055855"
                                    "_5462022395781094694_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=0debeb&_nc_eui2=AeEXQjC44vQz4qppfmpGxWP5pZOEvi0-AN2lk4S-"
                                    "LT4A3VmO34urzbZp55e1fyDBiIUvb1FtN-bEJSXDRBhbC512&_nc_ohc="
                                    "3UdiBzjUmdIAX9L8X-r&_nc_ht=scontent.fdac136-1."
                                    "fna&oh=00_AfCLUGEqH_Hs_VlhNst61h6JMQBMpWMxauvr_HO6rLtVDQ&oe=63AA422A",
                                fit: BoxFit.cover),
                          ),
                        ),
                        Text(
                          "Gives ideas about",
                          style: TextStyle(fontSize: 16),),
                        Text(
                          "funcations of FLUTTER",
                          style: TextStyle(fontSize: 16),),
                        Text("by Shek Farid Uddin",),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        )
    );
  }
}

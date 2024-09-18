import 'package:flutter/material.dart';
import 'package:thiriyandadrkyaw_adpd_assignment/SchoolPages/submisson_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(50),topLeft: Radius.circular(50)),
              boxShadow: const [
                BoxShadow(color: Colors.white10, spreadRadius: 1, blurRadius: 1)
              ]),
          child: ListView(
            padding: EdgeInsets.only(top: 20, right: 30, left: 30),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hi, Treaurse",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () {
                      ///Navigator
                    },
                    icon: Icon(
                      Icons.person,
                      color: Colors.blueAccent,
                      size: 40,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white10,
                        spreadRadius: 2,
                      ),
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Search Course",
                      style: TextStyle(color: Colors.black38),
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.blueAccent,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Recently Accessed Courses",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: const Color(0xFFDADADA),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black38,
                            spreadRadius: 2,
                            blurRadius: 1,
                          ),
                        ]),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.computer),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "WDD",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: const Color(0xFFDADADA),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black38,
                            spreadRadius: 2,
                            blurRadius: 1,
                          ),
                        ]),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.lightbulb_circle_outlined,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "BPS",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 90,
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "asset/logo.png",
                        height: 60,
                      ),
                      Text(
                        "LANN STUDIO",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 13),
                decoration: BoxDecoration(color: Color(0xFF6489EB), boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                  ),
                ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        buildStatus(14, "Courses Enrolled",
                            Icons.calendar_today_outlined),
                        SizedBox(
                          height: 8,
                        ),
                        buildStatus(
                            0, "Courses Complete", Icons.check_box_rounded),
                        SizedBox(
                          height: 8,
                        ),
                        buildStatus(0, "Activities Due", Icons.description)
                      ],
                    ),
                    Image.asset("asset/book.png"),
                  ],
                ),
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ///Networking Course
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    decoration: BoxDecoration(
                      color: Color(0xFF6489EB),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Image.asset("asset/Lecture/networking.jpg",
                            height: 120, width: 160),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text(
                              "Networking",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 10,),

                            InkWell(
                              onTap: ()=>{
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SubmissionPage(title: "Networking"),))

                              },
                              child: Container(
                                padding: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.white),
                                ),
                                child: Text(
                                  "View Course",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  ///Programming Course
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    decoration: BoxDecoration(
                      color: Color(0xFF6489EB),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Image.asset("asset/Lecture/programming.jpg",
                            height: 120, width: 160),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text(
                              "Programming",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 10,),

                            InkWell(
                              onTap: ()=>{
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SubmissionPage(title: "Programming"),))

                              },
                              child: Container(
                                padding: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.white),
                                ),
                                child: Text(
                                  "View Course",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Container buildStatus(int count, String title, IconData icon) {
    return Container(
      width: 150,
      padding: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.transparent,
          border: Border.all(color: Colors.black)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 18,
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                count.toString(),
                style: TextStyle(color: Colors.black, fontSize: 12),
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

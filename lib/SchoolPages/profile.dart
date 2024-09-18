import 'package:flutter/material.dart';
import 'package:thiriyandadrkyaw_adpd_assignment/Authenticatoin/login.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int screenControl =0;

  void screenControlFunction(int value){
    setState(() {
      screenControl =value;
    });
  }

  @override
  Widget build(BuildContext context) {
    List pages =[
      buildActivites(context),
      buildDetails(context)

    ];
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Image.asset(
              "asset/logo.png",
              height: 40,
            ),
          ),
        ],
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(Icons.arrow_back)),
        title: Text(
          "Profile",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        children: [
          SizedBox(
            height: 15,
          ),
          Container(
            child: Stack(children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 60),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width:
                        double.infinity, // Make the inner container full width
                    child: Column(
                      mainAxisSize:
                          MainAxisSize.min, // Keep the height as needed
                      children: [
                        Text(
                          "Treasure",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                        Text(
                          "HND51",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 100,
                  )
                ],
              ),
              Positioned(
                right: 110,
                top: 120,
                child: Image.asset("asset/person/profile.png"),
              ),
            ]),
          ),

          //Button Naviator
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              InkWell(
                onTap: (){
                  screenControlFunction(0);
                },
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(

                    color:  screenControl==  0 ?Colors.blueAccent: Colors.grey,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Text("Activities",style: TextStyle(color: Colors.white),),
                ),

              ),
              SizedBox(width: 10,),
              InkWell(
                onTap: (){
                  screenControlFunction(1);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 8,horizontal: 18),
                  decoration: BoxDecoration(

                      color: screenControl==  1 ?Colors.blueAccent: Colors.grey,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Text("Details",style: TextStyle(color: Colors.white),),
                ),),
            ],
          ),
          SizedBox(height: 40,),
          pages[screenControl],
        ],
      ),
    );
  }
  ///Activities Pge
  Widget buildActivites(BuildContext context) {
    return Column(
         children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               BuildPercentage(context, 1, "Activities", "100"),
               BuildPercentage(context, 0.4, "Attendance", "45"),
               BuildPercentage(context, 0.85, "Overall Grades", "85"),
             ],
           ),
           SizedBox(
             height: 50,
           ),
           InkWell(
             onTap: () {
               Navigator.of(context).push(
                 MaterialPageRoute(
                   builder: (context) => LoginPage(),
                 ),
               );
             },
             child: Container(
               margin: EdgeInsets.symmetric(horizontal: 100),
               width: 100,
               padding: EdgeInsets.symmetric(vertical: 10),
               alignment: Alignment.center,
               decoration: BoxDecoration(
                   color: Color(0xFF0361AD),
                   borderRadius: BorderRadius.circular(10)),
               child: Text(
                 "Log Out",
                 style: TextStyle(
                     fontSize: 25,
                     fontWeight: FontWeight.bold,
                     color: Colors.black),
               ),
             ),
           )
         ],
       );
  }
  //InfroDeatilPage
  Widget buildDetails(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            buildStatus("0","Contacts"),
            buildStatus("2","Discussions"),
            buildStatus("4", "Blog Entities"),
            buildStatus("2", "Badges"),

          ],
        ),
        SizedBox(height: 25,),
        Container(
          padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 10),
          height: 250,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Center( // Center the Column within the Container
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // Center items vertically within the Column
                  crossAxisAlignment: CrossAxisAlignment.start, // Center items horizontally
                  children: [
                    buildRow("FirstName", "Thiri Yandanar"),
                    buildRow("Email Address", "thiritreasurekyaw@gmail.com"),
                    buildRow("Department", "TimeCity"),
                    buildRow("Country", "Myanmar"),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // Center items vertically within the Column
                  crossAxisAlignment: CrossAxisAlignment.start, // Center items horizontally
                  children: [
                    buildRow("LastName", "Kyaw"),
                    buildRow("Phone", "097879945"),
                    buildRow("Interest", "Eating"),
                    buildRow("Address", "2Lane 3 Street"),
                  ],
                ),
              ],
            ),
          ),
        )


      ],
    );
  }

  Widget buildRow(String title, String data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              SizedBox(

                  child: Text(title,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
              SizedBox(

                  child: Text(data)),

            ],);
  }

  Column buildStatus(String value,String title) {
    return Column(
            children: [
              Text(value,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
              Text(title,
              style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 14),),

            ],
          );
  }


  Widget BuildPercentage(
      BuildContext context, double value, String text, String percenatgeValue) {
    return Column(

      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(5),
              color: Colors.transparent,
              width: 80, // Diameter
              height: 80, // Diameter
              child: CircularProgressIndicator(
                backgroundColor: Colors.grey,
                color: Colors.black,
                value: value, // value should be between 0.0 and 1.0
                strokeWidth: 8.0,
              ),
            ),
            Text(
              '${percenatgeValue}%', // Convert to percentage
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            Positioned(
              bottom: -30, // Position the text below the indicator
              child: Text(
                text,
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        SizedBox(height: 5.0), // Add some space between the indicator and text
        Text(
          text,
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

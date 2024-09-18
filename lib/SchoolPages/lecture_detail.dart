import 'package:flutter/material.dart';

import 'package:thiriyandadrkyaw_adpd_assignment/SchoolPages/submisson_page.dart';

class LectureDetail extends StatefulWidget {
  final String instructorTitle;
  final String lecture1;
  final String lecture2;
  final String lecture3;
  final String lecture4;
 final String title;
 final String instructor;
  const LectureDetail({
    super.key, required this.title, required this.instructorTitle, required this.instructor, required this.lecture1, required this.lecture2, required this.lecture3, required this.lecture4});

  @override
  State<LectureDetail> createState() => _LectureDetailState();
}

class _LectureDetailState extends State<LectureDetail> {
  @override
  Widget build(BuildContext context) {
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
          widget.title,
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
                          widget.instructor,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                        Text(
                          widget.instructorTitle,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 13),
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
          buildCard(Icons.book, widget.lecture1),
          buildCard(Icons.folder, widget.lecture2),
          buildCard(Icons.folder, widget.lecture3),
          InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SubmissionPage(title: widget.title),),);
              },
              child: buildCard(Icons.download, widget.lecture4)),

        ],
      ),
    );
  }
  Card buildCard(IconData icon, String title) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Icon(icon, size: 40),
        title: Text(title, style: TextStyle(fontSize: 18)),
        trailing: Icon(Icons.arrow_forward),
      ),
    );
  }
}

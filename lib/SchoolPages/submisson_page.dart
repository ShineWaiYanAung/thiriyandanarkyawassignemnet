import 'package:flutter/material.dart';

class SubmissionPage extends StatefulWidget {
  final String title;
  const SubmissionPage({

    super.key, required this.title});

  @override
  State<SubmissionPage> createState() => _SubmissionPageState();
}

class _SubmissionPageState extends State<SubmissionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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

          Column(children: [
            Image.asset(
              "asset/logo.png",
              height: 60,
            ),
            Text(
              "LANNI STUDIO",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ]),
          SizedBox(
            height: 15,
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              "Opened: Friday, 26 July 2024, 12:00 AM",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              "Due: Wednesday, 21 August 2024, 11:55 PM",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Icon(
                Icons.file_copy_outlined,
                color: Colors.grey,
              ),
              SizedBox(
                width: 11,
              ),
              Text(
                "Files",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                width: 11,
              ),
              Icon(
                Icons.folder_copy_outlined,
                color: Colors.grey,
              ),
              SizedBox(
                width: 11,
              ),
              Text(
                "Add",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.symmetric(vertical: 60),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.black,
              ),
            ),
            child: Column(
              children: [
                Icon(Icons.download_outlined),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Your Can drag and drop files here to add them",
                  style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(height: 50,),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xFF0361AD),
              borderRadius: BorderRadius.circular(10)
            ),
              child: Text("ADD Submission",style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),),
          )
        ],
      ),
    );
  }
}

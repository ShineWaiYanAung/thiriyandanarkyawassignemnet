import 'package:flutter/material.dart';
import 'package:thiriyandadrkyaw_adpd_assignment/Authenticatoin/singup.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool visibility = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Image.asset("asset/logo.png",height: 150,),
          Text("LANNI STUDIO",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
          SizedBox(height: 50), // Space for logo or title
          // Email TextField with container and shadow
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 8.0,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.person,size: 40,),
                iconColor: Colors.blueAccent,
                hintText: 'Email',

                contentPadding: EdgeInsets.symmetric(horizontal: 2, vertical:16.0),
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(height: 16.0),

          // Password TextField with container and shadow
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 8.0,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: TextField(
              obscureText: visibility,
              decoration: InputDecoration(
                suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          visibility = !visibility;
                        });
                }, icon: visibility ? Icon(Icons.visibility_off,color: Colors.blueAccent,):Icon(Icons.visibility,color: Colors.blueAccent,)),
                icon: Icon(Icons.lock,size: 40,),
                iconColor: Colors.blueAccent,
                hintText: 'Password',
                contentPadding: EdgeInsets.symmetric( vertical: 16.0),
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(height: 32.0),
          ElevatedButton(
            onPressed: () {
              // Handle login
            },
            child: Text('Login',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              padding: EdgeInsets.symmetric(vertical: 10.0),
            ),
          ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUpPage(),),),
                child: Text('------------- or Sign Up with -------------',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
              )],
          ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Google Sign In Button
              Container(
                width: 150, // Adjust width as needed
                padding: EdgeInsets.symmetric(vertical: 16.0),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 8.0,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: InkWell(
                  onTap: () {
                    // Handle Google sign in
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('asset/goole.png', width: 24, height: 24), // Replace with your Google logo asset
                      SizedBox(width: 8.0),
                      Text('Google', style: TextStyle(color: Colors.blueAccent,fontSize: 18)),
                    ],
                  ),
                ),
              ),
              // Facebook Sign In Button
              Container(
                width: 150, // Adjust width as needed
                padding: EdgeInsets.symmetric(vertical: 16.0),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 8.0,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: InkWell(
                  onTap: () {
                    // Handle Facebook sign in
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('asset/facebook.png', width: 24, height: 24), // Replace with your Facebook logo asset
                      SizedBox(width: 8.0),
                      Text('Facebook', style: TextStyle(color: Colors.blueAccent,fontSize: 15)),
                    ],
                  ),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
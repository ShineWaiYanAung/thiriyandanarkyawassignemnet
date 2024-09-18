import 'package:flutter/material.dart';
import 'package:thiriyandadrkyaw_adpd_assignment/Authenticatoin/login.dart';
import 'package:thiriyandadrkyaw_adpd_assignment/HIVEDatabase/Model/function_CRUD.dart';
import 'package:thiriyandadrkyaw_adpd_assignment/SchoolPages/home_page.dart';

import '../HIVEDatabase/Model/useraccount_model.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final  TextEditingController userNameController = TextEditingController();
  final  TextEditingController passwordController = TextEditingController();
  final  TextEditingController emailController    = TextEditingController();
  bool _passwordVisibility = true;

  void _togglePasswordVisibility() {
    setState(() {
      _passwordVisibility = !_passwordVisibility;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Image.asset("asset/logo.png", height: 150),
          Text(
            "LANNI STUDIO",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
          ),
          SizedBox(height: 50), // Space for logo or title

          // Name TextField with container and shadow
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
              controller: userNameController,
              decoration: InputDecoration(
                icon: Icon(Icons.person, size: 40),
                iconColor: Colors.blueAccent,
                hintText: 'Name',
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(height: 16.0),

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
              controller: emailController,
              decoration: InputDecoration(
                icon: Icon(Icons.email, size: 40),
                iconColor: Colors.blueAccent,
                hintText: 'Email',
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
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
              controller: passwordController,
              obscureText: _passwordVisibility,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: _togglePasswordVisibility,
                  icon: Icon(
                    _passwordVisibility ? Icons.visibility_off : Icons.visibility,
                    color: Colors.blueAccent,
                  ),
                ),
                icon: Icon(Icons.lock, size: 40),
                iconColor: Colors.blueAccent,
                hintText: 'Password',
                contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 16.0),
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(height: 32.0),

          ElevatedButton(
            onPressed: () {
              userAccountRegiestor();
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage(),),);
            },
            child: Text('Sign Up', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20)),
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
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage(),),);
                },
                child: Text(
                  '------------- or login with -------------',
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Google Sign Up Button
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
                    // Handle Google sign up
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('asset/goole.png', width: 24, height: 24), // Replace with your Google logo asset
                      SizedBox(width: 8.0),
                      Text('Google', style: TextStyle(color: Colors.blueAccent, fontSize: 18)),
                    ],
                  ),
                ),
              ),
              // Facebook Sign Up Button
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

                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('asset/facebook.png', width: 24, height: 24), // Replace with your Facebook logo asset
                      SizedBox(width: 8.0),
                      Text('Facebook', style: TextStyle(color: Colors.blueAccent, fontSize: 15)),
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
  void userAccountRegiestor (){
    List <UserAccountModel> userAccounts =[];
    final String userName = userNameController.text;
    final String email   = emailController.text;
    final String password = passwordController.text;


    if(userName.isNotEmpty && email.isNotEmpty&& password.isNotEmpty ){
      final userAccount = UserAccountModel(
        userName :userName,
        email : email,
        password: password,
      );
      setState(() {
        userAccounts = [userAccount];
      });


      CrudFunction.addAccountRegiseristion( userAccounts);
      CrudFunction.handleErrorState(context, "Created Successfully Welcome ${userAccount.userName}",
          true);
      userNameController.clear();
      emailController.clear();
      passwordController.clear();
    }
    else{
      CrudFunction.handleErrorState(context, "Pleas Fill in all field Correctly",
          false);
    }

  }
}

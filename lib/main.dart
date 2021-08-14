import 'package:flutter/material.dart';
import 'package:login_page/screen/login_signup.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LogIn & SignUp',
      home: LoginSignupScreen(),      
    );
  }
}


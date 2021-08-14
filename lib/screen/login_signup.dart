import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:login_page/config/palette.dart';

class LoginSignupScreen extends StatefulWidget {
  @override
  _LoginSignupScreenState createState() => _LoginSignupScreenState();
}

class _LoginSignupScreenState extends State<LoginSignupScreen> {
  bool isMale = true;
  bool isSignupScreen = true;
  bool isRememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('image/images.jpg'), fit: BoxFit.fill)),
              child: Container(
                padding: EdgeInsets.only(top: 90, left: 20),
                color: Color(0xFF3b5999).withOpacity(0.85),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                          text: "Welcome to",
                          style: TextStyle(
                            fontSize: 25,
                            letterSpacing: 2,
                            color: Colors.yellow[700],
                          ),
                          children: [
                            TextSpan(
                              text: " Jaber,",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.yellow[700],
                              ),
                            )
                          ]),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'SignUp To Continue',
                      style: TextStyle(
                        letterSpacing: 2,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
         // Main container for login and signup
          Positioned(
            top: 200,
            child: Container(
              height: 380,
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width - 40,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 15,
                        spreadRadius: 5),
                  ]),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSignupScreen = false;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              'LOGIN',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: !isSignupScreen
                                    ? Palette.activeColor
                                    : Palette.textColor1,
                              ),
                            ),
                            if (!isSignupScreen)
                              Container(
                                margin: EdgeInsets.only(top: 3),
                                height: 2,
                                width: 55,
                                color: Colors.orange,
                              )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSignupScreen = true;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              'SIGNUP',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: isSignupScreen
                                    ? Palette.activeColor
                                    : Palette.textColor1,
                              ),
                            ),
                            if (isSignupScreen)
                              Container(
                                margin: EdgeInsets.only(top: 3),
                                height: 2,
                                width: 55,
                                color: Colors.orange,
                              )
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        buildTextField(MaterialCommunityIcons.account_outline,
                            'User Name', false, false),
                        buildTextField(MaterialCommunityIcons.email_outline,
                            'email', false, true),
                        buildTextField(MaterialCommunityIcons.lock_outline,
                            'password', true, false),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 10),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isMale = true;
                                  });
                                },
                                child: Row(
                                  children: [
                                    Container(
                                      width: 30,
                                      height: 30,
                                      margin: EdgeInsets.only(right: 8),
                                      decoration: BoxDecoration(
                                        color: isMale? Palette.textColor2 : Colors.transparent,
                                          border: Border.all(
                                              width: 1,
                                              color: isMale? Colors.transparent : Palette.textColor1),
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: Icon(
                                        MaterialCommunityIcons.account_outline,
                                        color: isMale? Colors.white : Palette.iconColor,
                                      ),
                                    ),
                                    Text(
                                      'Male',
                                      style:
                                          TextStyle(color: Palette.textColor1),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isMale = false;
                                  });
                                },
                                child: Row(
                                  children: [
                                    Container(
                                      width: 30,
                                      height: 30,
                                      margin: EdgeInsets.only(right: 8),
                                      decoration: BoxDecoration(
                                          color: isMale? Colors.transparent : Palette.textColor2,
                                          border: Border.all(
                                              width: 1,
                                              color: isMale? Palette.textColor1 : Colors.transparent),
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: Icon(
                                        MaterialCommunityIcons.account_outline,
                                        color: isMale? Palette.iconColor : Colors.white,
                                      ),
                                    ),
                                    Text(
                                      'Female',
                                      style: TextStyle(color: Palette.textColor1),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 200,
                          margin: EdgeInsets.only(top: 20),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text: "By pressing 'Submit' you agree to our",
                              style: TextStyle(color: Palette.textColor2),
                              children: [
                                TextSpan(
                                  text: "term & conditions",
                                  style: TextStyle(color: Colors.orange),
                                ),
                              ]
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        // Add submit buttons
        Positioned(
          top: 535,
          right: 0,
          left: 0,
          child: Center(
            child: Container(
              height: 90,
              width: 90,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                     BoxShadow(
                       color: Colors.black.withOpacity(.3),
                       spreadRadius: 1,
                       blurRadius: 2,
                       offset: Offset(0,1),
                     )
                   ]
              ),
             child: Container(
               decoration: BoxDecoration(
                 gradient: LinearGradient(
                   colors: [Colors.orange[200], Colors.red[400]],
                   begin: Alignment.topLeft,
                   end: Alignment.bottomRight,
                   ),
                   borderRadius: BorderRadius.circular(30),
                   boxShadow: [
                     BoxShadow(
                       color: Colors.black.withOpacity(.3),
                       spreadRadius: 1,
                       blurRadius: 2,
                       offset: Offset(0,1),
                     )
                   ]
                   ),
                   child: Icon(Icons.arrow_forward,color: Colors.white,),
             ),
            ),
          ) )
        ],
      ),
    );
  }

  Widget buildTextField(
      IconData icon, String hintText, bool isPassword, bool isEmail) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TextField(
        obscureText: isPassword,
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Palette.iconColor,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Palette.textColor1),
            borderRadius: BorderRadius.all(Radius.circular(35.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Palette.textColor1),
            borderRadius: BorderRadius.all(Radius.circular(35.0)),
          ),
          contentPadding: EdgeInsets.all(10),
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 14, color: Palette.textColor1),
        ),
      ),
    );
  }
}

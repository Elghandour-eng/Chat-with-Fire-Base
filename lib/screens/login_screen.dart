import 'package:flutter/material.dart';
import 'refactor.dart';

class LoginScreen extends StatefulWidget {
 static String id ="Login_Screen";
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        resizeToAvoidBottomPadding: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Hero(
                tag: 'logo',
                child: Container(
                  height: 200.0,
                  child: Image.asset('images/logo.png'),
                ),
              ),
              SizedBox(
                height: 48.0,
              ),
              Input(content: 'Enter your email',secuer: false,),
              SizedBox(
                height: 8.0,
              ),
              Input(content:'Enter your password' ,secuer: true,),
              SizedBox(
                height: 24.0,
              ),
             Rounded(content: 'Log In',coloor: Colors.lightBlueAccent,)
            ],
          ),
        ),
      ),
    );
  }
}

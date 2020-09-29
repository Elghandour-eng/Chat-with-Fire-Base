import 'package:flutter/material.dart';
import 'refactor.dart';
class RegistrationScreen extends StatefulWidget {
  static String id ="Registeration_screen";

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  String email ;
  String password;
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
              Hero(tag: 'logo',
                child: Container(
                  height: 200.0,
                  child: Image.asset('images/logo.png'),
                ),
              ),
              SizedBox(
                height: 48.0,
              ),
              Input(content: 'Enter your email',Onpressed: email ,secuer: false,),
              SizedBox(
                height:8,
              ),
              Input(content: 'Enter your password',Onpressed: password,secuer: true,),
              SizedBox(
                height: 24.0,
              ),
              Rounded(coloor: Colors.lightBlue,content: 'Register',)
            ],
          ),
        ),
      ),
    );
  }
}

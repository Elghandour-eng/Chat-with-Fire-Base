import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'registration_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'refactor.dart';
class WelcomeScreen extends StatefulWidget {
 static String id ='Welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin
{
  AnimationController controller ;
  @override
  void initState(){
    super.initState();
    controller =AnimationController(
    duration: Duration(seconds:2)
      ,upperBound: 100
    ,vsync:this,);
  controller.forward();
  controller.addListener((){setState(() {
    
  });
    print(controller.value);
  });
  }
  Widget build(BuildContext context) {
    return Scaffold(


      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(tag: 'logo',

                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: controller.value,
                  ),
                ),
                TyperAnimatedTextKit(
                  text :[
                    'Flash Chat'
                  ],
                  textStyle: TextStyle(
                    fontSize: 30,

                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            Rounded(coloor: Colors.blueAccent,content: 'Register',action: RegistrationScreen.id,),
            Rounded(coloor: Colors.lightBlueAccent,content: 'Log In',action: LoginScreen.id,),
          ],
        ),
      ),
    );
  }
}

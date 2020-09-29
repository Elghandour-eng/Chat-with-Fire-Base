import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Rounded extends StatelessWidget {
  Rounded({this.coloor,this.content,this.action});
  final Color coloor;
  final String content;
  final String action;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: coloor,
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: () {
            //Go to registration screen.
            Navigator.pushNamed(context, action);

          },
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            content,
          ),
        ),
      ),
    );
  }
}
 class Input extends StatelessWidget {
 Input({this.content,this.Onpressed,this.secuer});
  final String content;
   String Onpressed;
   bool secuer;
   @override
   Widget build(BuildContext context) {
     return
       TextField(
         obscureText: secuer,
         textAlign: TextAlign.center ,
         style: TextStyle(color: Colors.black),
          onChanged: (value) {
           //Do sething with the user input.
          Onpressed =value;
         },
         decoration: InputDecoration(
           hintText: content,
           hintStyle: TextStyle(color: Colors.grey),
           contentPadding:
           EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
           border: OutlineInputBorder(
             borderRadius: BorderRadius.all(Radius.circular(32.0)),
           ),
           enabledBorder: OutlineInputBorder(
             borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
             borderRadius: BorderRadius.all(Radius.circular(32.0)),
           ),
           focusedBorder: OutlineInputBorder(
             borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
             borderRadius: BorderRadius.all(Radius.circular(32.0)),
           ),
         ),
       );
   }
 }

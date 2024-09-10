import 'package:assignment3/Interface/levels_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget{
  String text;
Color color;
Color textColor;
Color borderColor;

  MyButton(this.text,this.color,this.textColor,this.borderColor);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(
        onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>LevelsPage()));
    },
    style: ElevatedButton.styleFrom(
    primary: color, // Background color
      onPrimary: textColor,
      minimumSize: Size(300, 70), // Set the minimum width and height
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(
          color: borderColor, // Border color
          width: 2, // Border width
        ),// Rounded corners
      ),// Text color
    )
    , child:Text(text,textAlign: TextAlign.center,
    style: TextStyle(fontSize: 25,fontFamily: 'EduAUVICWANTHand'),) );
  }
}
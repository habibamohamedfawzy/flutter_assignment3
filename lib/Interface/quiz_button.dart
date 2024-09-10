import 'package:assignment3/Interface/levels_page.dart';
import 'package:assignment3/Interface/result_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuizButton extends StatelessWidget{
  String text;

  QuizButton(this.text);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultPage()));

        },
        style: ElevatedButton.styleFrom(
          primary: Color(0xff7F38EC), // Background color
          onPrimary: Colors.white,
          minimumSize: Size(80, 60), // Set the minimum width and height
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),

          ),// Text color
        )
        , child:Text(text,textAlign: TextAlign.center,
      style: TextStyle(fontSize: 20),) );
  }
}
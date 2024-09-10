import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget{
  String no;
  String Ans;

  Answer(this.no, this.Ans);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        SizedBox(width: 20,),
        CircleAvatar(
          radius: 18,
          child: Text(no,style: TextStyle(
            color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold
          ),),
          backgroundColor: Color(0xff7F38EC),
        ),
        SizedBox(width: 15,),
        Text(Ans,style: TextStyle(
            color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold
        ),),
      ],
    );
  }
}
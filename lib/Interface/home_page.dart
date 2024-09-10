import 'package:assignment3/Interface/my_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:assignment3/Interface/home_container_cliper.dart';
import 'package:assignment3/Interface/circle_avatar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Color(0xff4B0082),
            height: double.infinity,
          ),
          ClipPath(
            clipper: HomeContainerCliper(),
            child: Container(
              color: Colors.white.withOpacity(0.1),
              height: 400,
            ),
          ),
          // Positioned CircleAvatars
          Positioned(
            top: 50, // Adjust as needed
            left: 30, // Adjust as needed
            child: HomeCircleAvatar(10.0),
          ),
          Positioned(
            top: 150, // Adjust as needed
            left: 100, // Adjust as needed
            child: HomeCircleAvatar(5.0),
          ),
          Positioned(
            top: 250, // Adjust as needed
            left: 200, // Adjust as needed
            child: HomeCircleAvatar(15.0),
          ),
          Positioned(
            top: 200, // Adjust as needed
            right:30, // Adjust as needed
            child: HomeCircleAvatar(10.0),

          ),
          Positioned(
            top: 50, // Adjust as needed
            left: 100, // Adjust as needed
            child: HomeCircleAvatar(5.0),
          ),
          Positioned(
            top: 30, // Adjust as needed
            right: 30, // Adjust as needed
            child: HomeCircleAvatar(15.0),
          ),
          Positioned(
            top: 300, // Adjust as needed
            left: 20, // Adjust as needed
            child: HomeCircleAvatar(10.0),
          ),
          Positioned(
            top: 270, // Adjust as needed
            left: 80, // Adjust as needed
            child: HomeCircleAvatar(5.0),
          ),
          Positioned(
            top: 150, // Adjust as needed
            left: 200, // Adjust as needed
            child: HomeCircleAvatar(10.0),
          ),
          Positioned(child:Image.asset('imgs/iq.png',height: 200,width: 100,),
          top: 130,
          left: 140,),
          Positioned(
            top: 270,
              left: 90,
              child: Text('Quizzles',style: TextStyle(color: Colors.greenAccent,fontFamily: 'EduAUVICWANTHand',fontWeight:FontWeight.bold,fontSize: 50,
          ))
          ),
          Positioned(
              top: 420,
              left: 120,
              child: Text('Lets Play!',style: TextStyle(color: Colors.white,fontFamily: 'EduAUVICWANTHand',fontWeight:FontWeight.bold,fontSize: 30,
              ))
          ),
          Positioned(
              top: 470,
              left: 110,
              child: Text('Play now and level up',style: TextStyle(color: Colors.white,fontFamily: 'EduAUVICWANTHand',fontSize: 15,
              ))
          ),
          Positioned(
              top: 550,
              left: 45,
              child: MyButton('Play Now',Color(0xff7F38EC),Colors.white,Colors.transparent),
          ),
          Positioned(
            top: 640,
            left: 45,
            child: MyButton('About',Colors.transparent,Color(0xff7F38EC),Color(0xff7F38EC)),
          ),
          // Add more Positioned widgets as needed
        ],
      ),
    );
  }
}

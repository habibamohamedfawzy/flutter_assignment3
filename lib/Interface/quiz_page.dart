import 'package:assignment3/Interface/answer.dart';
import 'package:assignment3/Interface/quiz_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  color: Color(0xff4B0082),
                  width: double.infinity, // Make the container take full width
                ),
                Positioned(
                  top: 30, // Adjust as needed
                  right: 25, // Adjust as needed
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 20.0,
                        backgroundColor: Colors.white.withOpacity(0.3),
                      ),
                      Positioned(
                        top: 10,
                        left: 10,
                        child: Image.asset(
                          'imgs/hamburger.png',
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 160,
                  child: Text(
                    'level 5',
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontFamily: 'EduAUVICWANTHand',
                      fontSize: 25,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(height: 50,),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Column(
                          children: [
                            Text(
                              '07/10',
                              style: TextStyle(
                                color: Colors.greenAccent,
                                fontFamily: 'EduAUVICWANTHand',
                                fontSize: 10,
                              ),
                            ),
                            Text(
                              'What is the 6th planet in',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'EduAUVICWANTHand',
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'the solar system ?',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontFamily: 'EduAUVICWANTHand',
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    // Container with BoxDecoration for rounded corners
                    Container(
                      width: 300, // Set the width and height
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20), // Rounded corners
                        image: DecorationImage(
                          image: AssetImage('imgs/images.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       Answer('01', 'Jupiter'),
                        SizedBox(height: 10,),
                        Answer('02', 'Saturn'),
                        SizedBox(height: 10,),
                        Answer('03', 'Earth'),
                        SizedBox(height: 10,),
                        Answer('04', 'Neptune')

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      QuizButton('Next'),
                        QuizButton('Prev')
                    ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

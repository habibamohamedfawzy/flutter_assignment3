import 'package:assignment3/Interface/colored_circle_avatar.dart';
import 'package:assignment3/Interface/quiz_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math'; // Import the math library for random values

class ResultPage extends StatelessWidget {
  // Function to generate random colors
  Color getRandomColor() {
    final random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }

  // Function to generate a list of random Positioned ColoredCircleAvatars
  List<Widget> generateRandomAvatars(int count) {
    final random = Random();
    List<Widget> avatars = [];

    for (int i = 0; i < count; i++) {
      // Generate random positions for each avatar
      double top = random.nextDouble() *
          400; // Random position within the container's height
      double left = random.nextDouble() *
          350; // Random position within the container's width
      avatars.add(
        Positioned(
          top: top,
          left: left,
          child: ColoredCircleAvatar(5, getRandomColor()),
        ),
      );
    }
    return avatars;
  }

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
    top: 30,
    left: 25,
    child: GestureDetector(
    onTap: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => QuizPage()),
    );
    },
    child: CircleAvatar(
    radius: 20.0,
    backgroundColor: Colors.white.withOpacity(0.3),
    child: Icon(Icons.arrow_back, color: Colors.white),
    ),
    ),
    ),
    Positioned(
    top: 30,
    left: 160,
    child: Text(
    'Result',
    style: TextStyle(
    color: Colors.greenAccent,
                      fontFamily: 'EduAUVICWANTHand',
                      fontSize: 25,
                    ),
                  ),
                ),
                Positioned(
                  top: 100,
                  left: 20,
                  right: 20,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Total correct answers',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '6 out of 10 Questions',
                        style: TextStyle(
                          color: Colors.greenAccent,
                          fontFamily: 'EduAUVICWANTHand',
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xff7F38EC),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 400,
                        width: double.infinity, // Adjust width if needed
                        child: Stack(
                          children: [
                            Center(
                              child: CircleAvatar(
                                radius: 90,
                                backgroundColor: Colors.yellow,
                                child: Text(
                                  '60',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 55,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            // Generate 40 random avatars
                            ...generateRandomAvatars(10),
                          ],
                        ),
                      ),
                      SizedBox(height: 50,),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => QuizPage()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff7F38EC),
                            // Background color
                            onPrimary: Colors.white,
                            minimumSize: Size(130, 60),
                            // Set the minimum width and height
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ), // Text color
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 95,),
                              Image.asset('imgs/reload.png',width: 20,height: 30,),

                              Text(
                                "Try Again ",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 20),
                              )
                            ],
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

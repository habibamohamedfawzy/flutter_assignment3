import 'package:assignment3/Interface/home_page.dart';
import 'package:assignment3/Interface/penta_path.dart';
import 'package:assignment3/Interface/quiz_page.dart';
import 'package:flutter/material.dart';

class PentaLevel extends StatelessWidget {
  final Color color;
  final String text;
  final int stars; // Number of stars to display

  PentaLevel(this.color, this.text, this.stars);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120, // Adjust width to accommodate stars
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Row for the stars
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              3, // Total number of stars to display
                  (index) => Icon(
                Icons.star,
                color: index < stars ? Colors.amber : Colors.grey, // Filled or empty star
                size: 20, // Size of the star
              ),
            ),
          ),
          SizedBox(height: 5), // Space between stars and pentagon

          // Pentagon shape with stack elements inside
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                width: 100,
                height: 100,
                child: CustomPaint(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => QuizPage()));
                    },
                  ),
                  painter: PentagonPainter(color),
                ),
              ),
              // Circle Avatars positioned within the pentagon
              Positioned(
                left: 40,
                top: 10,
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.white.withOpacity(0.3),
                ),
              ),
              Positioned(
                left: 15,
                top: 70,
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.white.withOpacity(0.3),
                ),
              ),
              Positioned(
                left: 60,
                top: 80,
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.white.withOpacity(0.3),
                ),
              ),
              Positioned(
                left: 30,
                top: 40,
                child: Text(
                  "Level",
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'EduAUVICWANTHand',
                      color: Colors.white),
                ),
              ),
              Positioned(
                left: 40,
                top: 70,
                child: Text(
                  text,
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'EduAUVICWANTHand',
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

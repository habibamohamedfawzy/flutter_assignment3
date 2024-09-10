import 'package:assignment3/Interface/penta_level.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:assignment3/Interface/my_button.dart';
import 'package:assignment3/Interface/locked_penta_level.dart';

class LevelsPage extends StatelessWidget {
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
                  left: 25, // Adjust as needed
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 20.0,
                        backgroundColor: Colors.white.withOpacity(0.3),
                      ),
                      Positioned(
                        top: 8,
                        left: 8,
                        child: GestureDetector(
                          onTap: () {
                            // Navigate back when the icon is tapped
                            Navigator.pop(context);
                          },
                          child:  Icon(Icons.arrow_back, color: Colors.white),
                        )
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 160,
                  child: Text(
                    'levels',
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        PentaLevel(Color(0xff7F38EC),"01",3),
                        PentaLevel(Color(0xff007FFF),"02",3),
                      ],
                    )
                    ,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        PentaLevel(Colors.orange,"03",1),
                        PentaLevel(Colors.greenAccent,"04",2),
                      ],
                    )
                    , Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        PentaLevel(Color(0xffFF00BF),"05",0),
                        LockedPentaLevel(Color(0xff7F38EC),"06",0)

                      ],
                    )
                    , Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        LockedPentaLevel(Color(0xff007FFF),"07",0),
                        LockedPentaLevel(Colors.orange,"08",0)

                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

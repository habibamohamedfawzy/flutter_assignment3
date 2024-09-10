import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColoredCircleAvatar extends StatelessWidget{
  double raduis;
Color color;
  ColoredCircleAvatar(this.raduis,this.color);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return CircleAvatar(
      radius: raduis,
      backgroundColor: color,
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeCircleAvatar extends StatelessWidget{
  double raduis;

  HomeCircleAvatar(this.raduis);

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return  CircleAvatar(
        radius: raduis,
        backgroundColor: Colors.white.withOpacity(0.3),
 );
  }


}
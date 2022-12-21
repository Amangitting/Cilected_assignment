import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';

Widget CustomText({required String data, required Color color, required FontWeight weight, required double size }){
  return Text(data,style: TextStyle(
    color: color,
    fontSize: size,
    fontWeight: weight
  ),);
}
import 'package:flutter/material.dart';

class TColors{
  TColors._();
  static const Color primary = Colors.blue;
  static const Color darkerGrey = Color(0xff4f4f4f);
  static const Color light = Color(0xfff6f6f6);
  static const Color grey = Color(0xffE0E0E0);



  static const Gradient linearGradient=LinearGradient(
    begin: Alignment(0, 0),
    end: Alignment(0.707, -0.707),
    colors: [
      Color(0xffff0000),
      Color(0xfff81d1d),
      Color(0xfffa5757),
    ],
  );
}
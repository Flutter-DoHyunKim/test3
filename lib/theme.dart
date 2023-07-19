import 'package:flutter/material.dart';

class CloneTheme{
  static TextTheme normalLightTheme=const TextTheme(
      titleLarge: TextStyle(
          color: Colors.white,
          fontSize: 28,
          height: 34/28,
        fontWeight:FontWeight.w700
      ),
      titleSmall: TextStyle(
          color: Colors.white,
          fontSize: 15,
          height: 20/15,
          fontWeight:FontWeight.w400
      ),
      titleMedium: TextStyle(
          color: Color.fromRGBO(85, 77, 86, 1),
          fontSize: 22,
          height: 28/22,
          fontWeight:FontWeight.w600
      ),
    bodyLarge: TextStyle(
        color: Colors.white,
        fontSize: 17,
        height: 22/17,
        fontWeight:FontWeight.w600
    ),
    bodyMedium: TextStyle(
        color: Color.fromRGBO(151, 145, 151, 1),
        fontSize: 15,
        height: 20/15,
        fontWeight:FontWeight.w400
    ),
    bodySmall: TextStyle(
        color: Color.fromRGBO(151, 145, 151, 1),
        fontSize: 11,
        height: 13/11,
        fontWeight:FontWeight.w400
    ),
  );
}
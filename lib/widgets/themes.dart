import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
        primaryColor: textColor,
        accentColor: textColor,
        // buttonColor: blueColor,
        // textTheme: const TextTheme(
        //   bodyMedium: TextStyle(fontSize: 14, fontFamily: 'Hind'),
        // ),
      );

  //Colors
  static Color textColor = const Color(0xfffffffe);
  static Color blueColor = const Color(0xff0088cc);
}


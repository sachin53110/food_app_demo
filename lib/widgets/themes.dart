import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primaryColor: Colors.green[400],
      fontFamily: GoogleFonts.lato().fontFamily,
      appBarTheme: AppBarTheme(
        color: Colors.green[300],
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.white),
        // ignore: deprecated_member_use
        textTheme: Theme.of(context).textTheme,
      ));

  static ThemeData darkTheme(BuildContext context) =>
      ThemeData(brightness: Brightness.dark);

  //colors
  static Color creameColor = const Color(0xfff5f5f5);
  static Color dartBlusihColor = const Color(0xff403b58);
}

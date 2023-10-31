import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Color scheme
/// https://colorhunt.co/palette/053b50176b8764ccc5eeeeee
/// darkest 0xFF053B50
/// dark 0xFF176B87
/// medium 0xFF64CCC5
/// light 0xFFEEEEEE
String fontValue = 'GoogleFonts.robotoSlab()';
final appTheme = ThemeData(
  useMaterial3: true,
  fontFamily: GoogleFonts.robotoSlab().fontFamily,

// Define the default brightness and colors.
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFF176B87),
    brightness: Brightness.light,
  ),

  scaffoldBackgroundColor: const Color(0xFF64CCC5),
  inputDecorationTheme: const InputDecorationTheme(
    filled: true,
    fillColor: Color(0xFF053B50),
    focusColor: Color(0xFFEEEEEE),
    hoverColor: Color(0xFFEEEEEE),
    prefixIconColor: Color(0xFFEEEEEE),
    prefixStyle: TextStyle(
      color: Color(0xFFEEEEEE),
    ),
    floatingLabelStyle: TextStyle(
      color: Color(0xFFEEEEEE),
    ),
    labelStyle: TextStyle(
      color: Color(0xFFEEEEEE),
    ),
    hintStyle: TextStyle(
      color: Color(0xFFEEEEEE),
    ),
    helperStyle: TextStyle(
      color: Color(0xFFEEEEEE),
    ),
  ),
  appBarTheme: const AppBarTheme(
    actionsIconTheme: IconThemeData(
      size: 40.0,
      weight: 400.0,
      fill: 1.0,
      color: Color(0xFF64CCC5),
      opacity: 1.0,
    ),
    iconTheme: IconThemeData(
      size: 40.0,
      weight: 900.0,
      fill: 1.0,
      color: Color(0xFF64CCC5),
      opacity: 1.0,
    ),
    elevation: 4,
    centerTitle: true,
    backgroundColor: Color(0xFF053B50),
    foregroundColor: Colors.white,
  ),

  textTheme: TextTheme(
    bodyLarge: GoogleFonts.robotoSlab(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal,
      fontSize: 24,
      color: const Color(0xFFEEEEEE),
    ),
    bodyMedium: GoogleFonts.robotoSlab(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal,
      fontSize: 16,
      color: const Color(0xFFEEEEEE),
    ),
    bodySmall: GoogleFonts.robotoSlab(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal,
      fontSize: 10,
      color: const Color(0xFFEEEEEE),
    ),
    displayLarge: GoogleFonts.robotoSlab(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal,
      fontSize: 20,
      color: const Color(0xFFEEEEEE),
    ),
    displayMedium: GoogleFonts.robotoSlab(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal,
      fontSize: 16,
      color: const Color(0xFFEEEEEE),
    ),
    displaySmall: GoogleFonts.robotoSlab(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal,
      fontSize: 12,
      color: const Color(0xFFEEEEEE),
    ),
    titleLarge: GoogleFonts.robotoSlab(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal,
      fontSize: 24,
      color: const Color(0xFFEEEEEE),
    ),
    titleMedium: GoogleFonts.robotoSlab(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal,
      fontSize: 16,
      color: const Color(0xFFEEEEEE),
    ),
    titleSmall: GoogleFonts.robotoSlab(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal,
      fontSize: 10,
      color: const Color(0xFFEEEEEE),
    ),
  ),
  listTileTheme: ListTileThemeData(
    textColor: Colors.white,
    titleTextStyle: GoogleFonts.robotoSlab(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal,
      fontSize: 16,
      color: const Color(0xFFEEEEEE),
    ),
    subtitleTextStyle: GoogleFonts.robotoSlab(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.normal,
        fontSize: 14,
        color: const Color(0xFFEEEEEE)),
    tileColor: const Color(0xFF053B50),
    shape: RoundedRectangleBorder(
      side: const BorderSide(width: 2),
      borderRadius: BorderRadius.circular(10),
      //border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(25.0))),
    ),
  ),
);

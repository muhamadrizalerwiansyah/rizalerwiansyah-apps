import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var textThemeStyle = TextTheme(
    titleLarge: GoogleFonts.poppins(
        textStyle: const TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      color: Color(0xFF0A0A0A),
    )),
    titleMedium: GoogleFonts.poppins(
        textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Color(0xFF0A0A0A),
    )),
    bodyLarge: GoogleFonts.poppins(
        textStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xFF0A0A0A))),
    bodyMedium: GoogleFonts.poppins(
        textStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Color(0xFF0A0A0A))));

const MaterialColor mcolorscheme =
    MaterialColor(_mcolorschemePrimaryValue, <int, Color>{
  50: Color(0xFF0077b6),
  100: Color(0xFF0077b6),
  200: Color(0xFF0077b6),
  300: Color(0xFF0077b6),
  400: Color(0xFF0077b6),
  500: Color(_mcolorschemePrimaryValue),
  600: Color(0xFF0077b6),
  700: Color(0xFF0077b6),
  800: Color(0xFF0077b6),
  900: Color(0xFF0077b6),
});
const int _mcolorschemePrimaryValue = 0xFF0077b6;

const MaterialColor mcolorschemeAccent =
    MaterialColor(_mcolorschemeAccentValue, <int, Color>{
  100: Color(0xFF0077b6),
  200: Color(_mcolorschemeAccentValue),
  400: Color(0xFF0077b6),
  700: Color(0xFF0077b6),
});
const int _mcolorschemeAccentValue = 0xFF0077b6;

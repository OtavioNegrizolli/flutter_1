import 'package:flutter/material.dart';

const _brightness = Brightness.light;
const _primaryColor = Color(0xFF2AACFF);
const _accentColor = Color(0xFFFFFFFF);

ThemeData androidTheme() {
  return ThemeData(
    brightness: _brightness,
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontFamily: "Poppins",
      ),
      displayMedium: TextStyle(
        fontFamily: "Poppins",
      ),
      displaySmall: TextStyle(
        fontFamily: "Poppins",
      ),
      bodyLarge: TextStyle(
        fontFamily: "Poppins",
      ),
      bodyMedium: TextStyle(
        fontFamily: "Poppins",
      ),
      bodySmall: TextStyle(
        fontFamily: "Poppins",
      ),
      headlineLarge: TextStyle(
        fontFamily: "Poppins",
      ),
      headlineMedium: TextStyle(
        fontFamily: "Poppins",
      ),
      headlineSmall: TextStyle(
        fontFamily: "Poppins",
      ),
      titleLarge: TextStyle(
        fontFamily: "Poppins",
      ),
      titleMedium: TextStyle(
        fontFamily: "Poppins",
      ),
      titleSmall: TextStyle(
        fontFamily: "Poppins",
      ),
      labelLarge: TextStyle(
        fontFamily: "Poppins",
      ),
      labelMedium: TextStyle(
        fontFamily: "Poppins",
      ),
      labelSmall: TextStyle(
        fontFamily: "Poppins",
      ),
    ),
    primaryColor: _primaryColor,
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: _accentColor),
  );
}

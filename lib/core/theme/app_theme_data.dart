import 'package:flutter/material.dart';

import 'constants.dart';

const _primaryColor = kPrimaryColor;

var appThemeData = ThemeData(
  primaryColor: _primaryColor,
  fontFamily: 'Poppins',
  brightness: Brightness.dark,
  // scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    centerTitle: true,
  ),
  iconTheme: const IconThemeData(
    color: Colors.white,
    size: 24,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.black,
      backgroundColor: _primaryColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        side: BorderSide(color: _primaryColor, width: 2),
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      minimumSize: const Size.fromWidth(100),
      shape: const RoundedRectangleBorder(
        // borderRadius: BorderRadius.all(Radius.circular(16)),
        side: BorderSide(color: _primaryColor, width: 2),
      ),
    ),
  ),
  // inputDecorationTheme: const InputDecorationTheme(
  //   border: OutlineInputBorder(

  //     borderSide: BorderSide(color: _primaryColor, width: 2),
  //   ),
  //   enabledBorder: OutlineInputBorder(
  //     borderSide: BorderSide(color: _primaryColor, width: 2),
  //   ),
  // ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      color: Colors.black,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    displaySmall: TextStyle(
      color: Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    bodyLarge: TextStyle(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
    bodyMedium: TextStyle(
      color: Colors.black,
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),
  ),
);

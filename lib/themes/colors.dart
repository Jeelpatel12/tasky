import 'package:flutter/material.dart';


// const Color tdRed = Color(0xFFDA4040);
// const Color tdBlue = Color(0xFF5F52EE);
//
// const Color tdBlack = Color(0xFF3A3A3A);
// const Color tdGrey = Color(0xFF717171);
//
// const Color tdBGColor = Color(0xFFEEEFF5);



class ThemeClass {
  Color lightPrimaryColor = Colors.blue;
  Color darkPrimaryColor = Colors.grey;
  Color secondaryColor = Colors.lightBlueAccent;
  Color accentColor = Colors.cyanAccent;

  static ThemeData lightTheme = ThemeData(
    primaryColor: ThemeData
        .light()
        .scaffoldBackgroundColor,
    colorScheme: const ColorScheme.light().copyWith(
        primary: _themeClass.lightPrimaryColor,
        secondary: _themeClass.secondaryColor),
  );

// static ThemeData darkTheme = ThemeData(
//   primaryColor: ThemeData.dark().scaffoldBackgroundColor,
//   floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Colors.grey),
//   colorScheme: const ColorScheme.dark().copyWith(
//     primary: _themeClass.darkPrimaryColor,
//
//   ),
// );

}






ThemeClass _themeClass = ThemeClass();
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
Color tdRed = Color(0xFFDA4040);
Color tdBlue = Color(0xFF5F52EE);

Color tdBlack = Color(0xFF3A3A3A);
Color tdGrey = Color(0xFF717171);

Color tdBGColor = Color(0xFFEEEFF5);
class ThemeManager {
  static Future<void> colors (String color) async {
    Color tdRed = Color(0xFFDA4040);
    Color tdBlue = Color(0xFF5F52EE);

    Color tdBlack = Color(0xFF3A3A3A);
    Color tdGrey = Color(0xFF717171);

    Color tdBGColor = Color(0xFFEEEFF5);
  }
  static ThemeData _currentTheme = ThemeData.light();


  static Future<void> applyTheme(String themeName) async {
    ThemeData newTheme;
    Color tdBGColor;
    Color input;
    Color Buttons;

    switch (themeName) {
      case 'Blue':
        newTheme = ThemeData.light().copyWith(
          primaryColor: Colors.blue, // Change primary color
          backgroundColor: Colors.blue[50], // Change background color
          scaffoldBackgroundColor: Colors.blue[50], // Change scaffold background color
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.blue, // Change button color
            textTheme: ButtonTextTheme.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: Colors.blue),
            ),
          ),
          textTheme: TextTheme(
            bodyText1: TextStyle(color: Colors.black), // Change body text color
            bodyText2: TextStyle(color: Colors.black), // Change body text color
            // Add more text styles as needed
          ),
          // Add more theme properties as needed
        );

        //Add other theme customization properties for the blue theme);
        break;
      case 'White':
        newTheme = ThemeData(primaryColor: Colors.white38,
          //accentColor: Colors.blueAccent,
          backgroundColor: Colors.white,
          scaffoldBackgroundColor: Colors.white,
          // Customize input boxes
          inputDecorationTheme: InputDecorationTheme(
            focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            ),
            labelStyle: TextStyle(color: Colors.black),
          ),
          // Customize buttons
          floatingActionButtonTheme: FloatingActionButtonThemeData(),
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.black,

            textTheme: ButtonTextTheme.primary,
          ),
          // Customize text colors
          textTheme: TextTheme(
            bodyText1: TextStyle(color: Colors.black),
            bodyText2: TextStyle(color: Colors.black),
            // Add more text styles as needed
          ),

        );
        Color tdBGColor = Colors.grey;
        //Add other theme customization properties for the blue theme);
        break;
      case 'Dark':
        newTheme = ThemeData.dark(

        );
        break;

      case 'Teal':
        newTheme = ThemeData.light().copyWith(
          primaryColor: Colors.teal.shade700,
          backgroundColor: Colors.teal[50],
          scaffoldBackgroundColor: Colors.teal[50],
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.teal,
            textTheme: ButtonTextTheme.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: Colors.teal.shade700),
            ),
          ),
          // Set the background color of the shape here
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              primary: Colors.teal, // Set the background color
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Colors.teal),
              ),
            ),
          ),
          // Add more theme properties as needed
        );
        break;

      default:
        newTheme = ThemeData.light();
        break;
    }

    _currentTheme = newTheme;

    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('selectedTheme', themeName);
  }

  static ThemeData get currentTheme => _currentTheme;

  static Future<void> loadTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String selectedTheme = prefs.getString('selectedTheme') ?? 'White';
    await applyTheme(selectedTheme);
  }
}
/*
ThemeData getBlueTheme() {
  return ThemeData(
    primaryColor: Colors.blue,
    accentColor: Colors.blueAccent,
    backgroundColor: Colors.blue[50],
    scaffoldBackgroundColor: Colors.blue[50],
    // Customize input boxes
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blue),
      ),
      labelStyle: TextStyle(color: Colors.blue),
    ),
    // Customize buttons
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.blue,
      textTheme: ButtonTextTheme.primary,
    ),
    // Customize text colors
    textTheme: TextTheme(
      bodyText1: TextStyle(color: Colors.blue),
      bodyText2: TextStyle(color: Colors.blue),
      // Add more text styles as needed
    ),
    // Add other theme customization properties for the blue theme
  );
}

* */
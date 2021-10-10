import 'package:flutter/material.dart';

// constant colors
const themeGreen = Color(0xFF1EB980);
const themeDarkGreen = Color(0xFF045D56);
const themeOrange = Color(0xFFFF6859);
const themeYellow = Color(0xFFFFCF44);
const themePurple = Color(0xFFB15DFF);
const themeBlue = Color(0xFF72DEFF);

const contentColorDarkTheme = Color(0xFF303030);
const contentColorLightTheme = Color(0xFF1D1D35);

const themePrimaryColor = themeGreen;
const themeSecondaryColor = themeDarkGreen;

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
      primaryColor: themePrimaryColor,
      // scaffoldBackgroundColor: Colors.white,
      iconTheme: IconThemeData(color: contentColorLightTheme),
      colorScheme: ColorScheme.light().copyWith(
          primary: themePrimaryColor,
          secondary: themeSecondaryColor,
          error: themeOrange
      ),
      textTheme: ThemeData.light().textTheme.apply(
          fontFamily: 'Roboto Condensed',
      ),
      primaryTextTheme: ThemeData.light().textTheme.apply(
          fontFamily: 'Roboto Condensed',
          bodyColor: Colors.white
      ),
      accentTextTheme: ThemeData.light().textTheme.apply(
          fontFamily: 'Roboto Condensed',
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        selectedIconTheme: IconThemeData(color: themePrimaryColor),
        selectedItemColor: contentColorLightTheme.withOpacity(0.7),
        unselectedItemColor: contentColorLightTheme.withOpacity(0.32),
      )
  );
}

ThemeData darkThemeData(BuildContext context) {
  print(ThemeData.dark().scaffoldBackgroundColor);
  return ThemeData.dark().copyWith(
    primaryColor: themePrimaryColor,
    scaffoldBackgroundColor: contentColorDarkTheme,
    iconTheme: IconThemeData(color: contentColorDarkTheme),
    colorScheme: ColorScheme.dark().copyWith(
      primary: themePrimaryColor,
      secondary: themeSecondaryColor,
      error: themeOrange
    ),
    textTheme: ThemeData.dark().textTheme.apply(
      fontFamily: 'Roboto Condensed',
      bodyColor: contentColorDarkTheme
    ),
    primaryTextTheme: ThemeData.dark().textTheme.apply(
        fontFamily: 'Roboto Condensed'
    ),
    accentTextTheme: ThemeData.dark().textTheme.apply(
        fontFamily: 'Roboto Condensed'
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: contentColorDarkTheme,
      selectedIconTheme: IconThemeData(color: themePrimaryColor),
      selectedItemColor: Colors.grey,
      unselectedItemColor: Colors.grey.withOpacity(0.32),
    )
  );
}
import 'package:flutter/material.dart';
import 'package:hawkeye/screens/main_screen.dart';
import 'package:hawkeye/theme.dart';

void main() {
  runApp(HawkeyeApp());
}

class HawkeyeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hawkeye',
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      home: MainScreen()
    );
  }
}

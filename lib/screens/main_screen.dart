import 'package:flutter/material.dart';
import 'package:hawkeye/screens/home_screen.dart';
import 'package:hawkeye/screens/activity_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // method that changes the index of the bottom navigation bar page
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // create a list of pages
  List<Widget> pageList = [HomeScreen(), ActivityScreen()];

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: pageList[_selectedIndex],
      bottomNavigationBar:
          BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.view_list), label: 'Activity'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings')
      ], currentIndex: _selectedIndex, onTap: _onItemTapped),
    );
  }
}

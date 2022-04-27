import 'package:flutter/material.dart';
import 'package:pet_land/core/colors/colors.dart';

import 'home_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _index = 0;

  List<Map<String, dynamic>> pages = [
    {"index": 0, "page": const HomeScreen()},
    {"index": 1, "page": const Scaffold()},
    {"index": 2, "page": const Scaffold()},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: SizedBox(
        child: BottomNavigationBar(
          selectedIconTheme: const IconThemeData(
            color: MyColors.meanColor,
          ),
          selectedItemColor: MyColors.meanColor,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.home_filled),
              label: _index != 0 ? '' : 'Home',
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.pets),
              label: _index != 1 ? "" : 'My Pet',
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.more_horiz_outlined),
              label: _index != 2 ? "" : 'More',
            ),
          ],
          currentIndex: _index,
          onTap: (int value) {
            setState(() {
              _index = value;
            });
          },
        ),
      ),
      body: pages[_index]['page'],
    ));
  }
}

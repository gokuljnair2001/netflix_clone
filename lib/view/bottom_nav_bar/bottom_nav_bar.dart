import 'package:flutter/material.dart';
import 'package:netflix_clone/view/downloads_screen/downloads_screen.dart';
import 'package:netflix_clone/view/main_screen/main_screen.dart';
import 'package:netflix_clone/view/more_screen/more_screen.dart';
import 'package:netflix_clone/view/notification_screen/notification_screen.dart';
import 'package:netflix_clone/view/search_screen/search_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List screens = [
    MainScreen(),
    SearchScreen(),
    NotificationScreen(),
    DownloadsScreen(),
    MoreScreen()
  ];
  int selesctedIntex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selesctedIntex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              selesctedIntex = value;
              screens[selesctedIntex] = screens[value];
            });
          },
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: TextStyle(fontSize: 10),
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: 'Coming soon'),
            BottomNavigationBarItem(
                icon: Icon(Icons.download), label: 'Downloads'),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'More')
          ]),
    );
  }
}

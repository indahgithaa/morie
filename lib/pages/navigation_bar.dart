import 'package:flutter/material.dart';
import 'package:morie/pages/forum_page.dart';
import 'package:morie/pages/home_page.dart';
import 'package:morie/pages/tracker_page.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  Widget _screen1 = HomePage();
  Widget _screen2 = TrackerPage();
  Widget _screen3 = ForumPage();

  // Keep track of the selected index
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: Container(
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: onTapHandler,
            selectedIconTheme: IconThemeData(color: Colors.black),
            selectedLabelStyle: TextStyle(fontSize: 0),
            unselectedLabelStyle: TextStyle(fontSize: 0),
            iconSize: 30.0,
            backgroundColor: Color.fromRGBO(197, 227, 255, 1.0),
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.grey,
                ),
                label: '',
                activeIcon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.calendar_month,
                  color: Colors.grey,
                ),
                label: '',
                activeIcon: Icon(
                  Icons.calendar_month,
                  color: Colors.black,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.people,
                  color: Colors.grey,
                ),
                label: '',
                activeIcon: Icon(
                  Icons.people,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Handle tap on the navigation bar items
  void onTapHandler(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  // Get the body based on the selected index
  Widget getBody() {
    if (selectedIndex == 0) {
      return _screen1;
    } else if (selectedIndex == 1) {
      return _screen2;
    }
    return _screen3;
  }
}

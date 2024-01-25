import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:morie/pages/forum_page.dart';
import 'package:morie/pages/home_page.dart';
import 'package:morie/pages/tracker_page.dart';
import 'package:morie/pages/relax_page.dart';
import 'package:morie/pages/consultation_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyApp> {
  // Define screen widgets
  Widget _screen1 = HomePage();
  Widget _screen2 = TrackerPage();
  Widget _screen3 = ForumPage();
  Widget _screen4 = RelaxPage();
  Widget _screen5 = ConsultationPage();

  // Keep track of the selected index
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: getBody(),
        bottomNavigationBar: Container(
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: selectedIndex,
              onTap: onTapHandler,
              selectedIconTheme: IconThemeData(color: Colors.black),
              selectedLabelStyle: TextStyle(fontSize: 0),
              unselectedLabelStyle: TextStyle(fontSize: 0),
              iconSize: 28.0,
              backgroundColor: Color.fromRGBO(197, 227, 255, 1.0),
              items: [
                BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/icons/home.svg',
                        color: Colors.grey),
                    label: '',
                    activeIcon: SvgPicture.asset('assets/icons/home.svg',
                        color: Colors.black)),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/icons/calendar.svg',
                        color: Colors.grey),
                    label: '',
                    activeIcon: SvgPicture.asset('assets/icons/calendar.svg',
                        color: Colors.black)),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/icons/forums.svg',
                        color: Colors.grey),
                    label: '',
                    activeIcon: SvgPicture.asset('assets/icons/forums.svg',
                        color: Colors.black)),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/icons/meditation.svg',
                        color: Colors.grey),
                    label: '',
                    activeIcon: SvgPicture.asset('assets/icons/meditation.svg',
                        color: Colors.black)),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/icons/consultation.svg',
                        color: Colors.grey),
                    label: '',
                    activeIcon: SvgPicture.asset(
                        'assets/icons/consultation.svg',
                        color: Colors.black)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Handle tap on the navigation bar items
  void onTapHandler(int index) {
    this.setState(() {
      this.selectedIndex = index;
    });
  }

  // Get the body based on the selected index
  Widget getBody() {
    if (this.selectedIndex == 0) {
      return this._screen1;
    } else if (this.selectedIndex == 1) {
      return this._screen2;
    } else if (this.selectedIndex == 2) {
      return this._screen3;
    } else if (this.selectedIndex == 3) {
      return this._screen4;
    }
    return this._screen5;
  }
}
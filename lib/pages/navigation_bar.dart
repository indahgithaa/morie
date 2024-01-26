import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:morie/pages/consultation_page.dart';
import 'package:morie/pages/forum_page.dart';
import 'package:morie/pages/home_page.dart';
import 'package:morie/pages/relax_page.dart';
import 'package:morie/pages/tracker_page.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<NavigationBar> {
  int selectedIndex = 0;

  final DateTime _selectedDate = DateTime.now();
  final user = FirebaseAuth.instance.currentUser!;

  // Define screen widgets
  late Widget _screen1;
  late Widget _screen2;
  late Widget _screen3;
  late Widget _screen4;
  late Widget _screen5;

  @override
  void initState() {
    super.initState();
    _screen1 = HomePage();
    _screen2 = TrackerPage();
    _screen3 = ForumPage();
    _screen4 = RelaxPage();
    _screen5 = ConsultationPage();
  }

  void onTapHandler(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  Widget getBody() {
    switch (selectedIndex) {
      case 0:
        return _screen1;
      case 1:
        return _screen2;
      case 2:
        return _screen3;
      case 3:
        return _screen4;
      case 4:
        return _screen5;
      default:
        return _screen1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 255, 254, 1),
      body: getBody(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: onTapHandler,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.track_changes),
              label: 'Tracker',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.forum),
              label: 'Forum',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.spa),
              label: 'Relax',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_hospital),
              label: 'Consultation',
            ),
          ],
        ),
      ),
    );
  }
}
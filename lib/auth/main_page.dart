import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:morie/auth/auth_page.dart';
import 'package:morie/pages/consultation_page.dart';
import 'package:morie/pages/forum_page.dart';
import 'package:morie/pages/home_page.dart';
import 'package:morie/pages/relax_page.dart';
import 'package:morie/pages/tracker_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return HomePage();
          } else {
            return AuthPage();
          }
        },
      ),
    );
  }
}

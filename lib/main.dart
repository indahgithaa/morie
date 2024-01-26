import 'package:flutter/material.dart';
import 'package:morie/auth/auth_page.dart';
import 'package:morie/pages/break_page.dart';
import 'package:morie/pages/breathe_page.dart';
import 'package:morie/pages/home_page.dart';
import 'package:morie/pages/first_page.dart';
import 'package:morie/pages/home_page.dart';
import 'package:morie/pages/meditate_page.dart';
import 'package:morie/pages/register_page.dart';
import 'package:morie/pages/relax_page.dart';
import 'package:morie/pages/relax_second_page.dart';
import 'auth/main_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'pages/breathe_second_page.dart';
import 'pages/meditate_second_page.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MainApp()); 
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BreakPage() // harusnya MainPage(), ubah dulu buat edit
    );
  }
}
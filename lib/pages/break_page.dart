import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'meditate_page.dart';
import 'breathe_page.dart';
import 'relax_page.dart';

class BreakPage extends StatefulWidget {
  const BreakPage({Key? key}) : super(key: key);

  @override
  State<BreakPage> createState() => _BreakPageState();
}

class _BreakPageState extends State<BreakPage> {
  Widget buildCircle(String emoji, String label, Widget page) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            // Blue circle border
            Container(
              width: 140.0,
              height: 140.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(70),
                border: Border.all(
                  color: Color.fromRGBO(178, 213, 255, 1),
                  width: 5.0,
                ),
                color: Colors.transparent,
              ),
            ),

            // Blue circle in the middle
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => page),
                );
              },
              child: Container(
                width: 115.0,
                height: 115.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(223, 237, 255, 1),
                ),
                child: Center(
                  child: Text(
                    emoji,
                    style: TextStyle(fontSize: 50),
                  ),
                ),
              ),
            ),
          ],
        ),

        SizedBox(height: 5),

        // Circle label
        Text(
          label,
          style: GoogleFonts.lato(
            color: Colors.black,
            fontSize: 20,
          ),
        ),

        SizedBox(height: 30),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 255, 254, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          primary: false,
          child: Column(
            children: [
              SizedBox(height: 50),

              // "Let's take a break" text
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Let’s take a break.",
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: Colors.black),
                  ),
                ),
              ),

              // "Calming down for a minute" text
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Calming down for a minute won't hurt!",
                    style: GoogleFonts.lato(
                        fontStyle: FontStyle.italic,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 50),

              // Meditate circle
              buildCircle('🌠', 'Meditate', MeditatePage()),

              // Breathe circle
              buildCircle('🍃', 'Breathe', BreathePage()),

              // Relax circle
              buildCircle('🦋', 'Relax', RelaxPage()),
            ],
          ),
        ),
      ),
    );
  }
}

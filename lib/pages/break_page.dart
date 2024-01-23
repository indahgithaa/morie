import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BreakPage extends StatefulWidget {
  const BreakPage({super.key});

  @override
  State<BreakPage> createState() => _BreakPageState();
}

class _BreakPageState extends State<BreakPage> {
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
                // "let's take a break" text
                Padding(
                  padding: const EdgeInsets.only(left: 35.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: 
                    Text(
                        "Let’s take a break.",
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                            color: Colors.black),
                      ),                  
                  ),
                ),

                //  calming down for a minute text
                Padding(
                  padding: const EdgeInsets.only(left: 35.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: 
                    Text(
                        "Calming down for a minute won\’t hurt!",
                        style: GoogleFonts.lato(
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                            color: Colors.black),
                      ),                  
                  ),
                ),
                SizedBox(height: 50),

                // meditate circle
               Stack(
                alignment: Alignment.center,
                children: [

                  // blue circle border
                  Container(
                    width: 130.0,
                    height: 130.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        color:  Color.fromRGBO(178, 213, 255, 1),
                        width: 3.0,
                      ),
                      color:  Color.fromRGBO(178, 213, 255, 1),
                    ),
                  ),

                  // blue circle in the middle 
                 // Inner blue circle 
                Container(
                  width: 115.0,
                  height: 115.0,  
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(223, 237, 255, 1),
                  ),

                  // Center text within inner circle
                  child: Center(
                    child: Text(
                      '🌠',
                      style: TextStyle(
                        fontSize: 50), 
                    )  
                  )
                )

                ],
              ),
              SizedBox(height: 5), 
                Text(
                  'Meditate',
                  style: GoogleFonts.lato(
                    color: Colors.black,
                    fontSize: 20),
                ),
              SizedBox(height: 30), 

                // breathe circle
              Stack(
                alignment: Alignment.center,
                children: [

                  // blue circle border
                  Container(
                    width: 130.0,
                    height: 130.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        color:  Color.fromRGBO(178, 213, 255, 1),
                        width: 3.0,
                      ),
                      color:  Color.fromRGBO(178, 213, 255, 1),
                    ),
                  ),

                  // blue circle in the middle 
                 // Inner blue circle 
                Container(
                  width: 115.0,
                  height: 115.0,  
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(223, 237, 255, 1),
                  ),

                  // Center text within inner circle
                  child: Center(
                    child: Text(
                      '🍃',
                      style: TextStyle(
                        fontSize: 50), 
                    )  
                  )
                )

                ],
              ),
              SizedBox(height: 5), 
                Text(
                  'Breathe',
                  style: GoogleFonts.lato(
                    color: Colors.black,
                    fontSize: 20),
                ),
              SizedBox(height: 30),

                // relax circle
                Stack(
                alignment: Alignment.center,
                children: [

                  // blue circle border
                  Container(
                    width: 130.0,
                    height: 130.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        color:  Color.fromRGBO(178, 213, 255, 1),
                        width: 3.0,
                      ),
                      color:  Color.fromRGBO(178, 213, 255, 1),
                    ),
                  ),

                  // blue circle in the middle 
                 // Inner blue circle 
                Container(
                  width: 115.0,
                  height: 115.0,  
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(223, 237, 255, 1),
                  ),

                  // Center text within inner circle
                  child: Center(
                    child: Text(
                      '🦋',
                      style: TextStyle(
                        fontSize: 50), 
                    )  
                  )
                )

                ],
              ),
              SizedBox(height: 5), 
                Text(
                  'Relax',
                  style: GoogleFonts.lato(
                    color: Colors.black,
                    fontSize: 20),
                ),
                      
              ],
        ),
      ),
      ),
    );
  }
}
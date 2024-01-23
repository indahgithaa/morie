import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final DateTime _selectedDate = DateTime.now();
  final user = FirebaseAuth.instance.currentUser!;

  int _selectedIndex = 0;
  late int indexOfFirstDayMonth;

  @override
  void initState() {
    super.initState();
    indexOfFirstDayMonth = getIndexOfFirstDayInMonth(_selectedDate);
    setState(() {
      _selectedIndex = indexOfFirstDayMonth +
          int.parse(DateFormat('d').format(DateTime.now())) -
          1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 255, 254, 1),
      // semua fitur
      body: SafeArea(
          child: SingleChildScrollView(
            primary: false,
            child: Column(
              children: [
                 Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Image.asset('lib/assets/header.png'),
                ),
               
                // "hello, emma!" text
                Padding(
                  padding: const EdgeInsets.only(left: 35.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        "Hello, Emma! ❤️",
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            color: Colors.black),
                      ),                    
                  ),
                ),
            
                // "you are the best, mom!" text
                Padding(
                  padding: const EdgeInsets.only(left: 35.0, top: 5.0, bottom: 5.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        "You are the best, mom!",
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black),
                      ),                    
                  ),
                ),
                SizedBox(height: 20),
            
               SizedBox(
                width: 350,
                height: 260,
                 child: Stack(
                  children: [
                     // kalender box
                  Container(
                    height: 160,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color(0xFFB2D5FF),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        border: Border.all(color: Color(0xFFB2D5FF)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 0.1,
                            blurRadius: 7,
                            offset: const Offset(0, 7.75),
                          ),
                        ]
                        ),

                             
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.arrow_left),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                                  child: SizedBox(
                                    height: 20,
                                      child: Text(
                                        DateFormat('dd MMMM yyyy').format(_selectedDate),
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.lato(
                                          fontSize: 15,
                                          color: Color.fromARGB(255, 22, 18, 18),
                                          fontWeight: FontWeight.bold),

                                    ),
                                  ),
                                ),
                                Icon(Icons.arrow_right),
                              ],
                            ),
                             SizedBox(
                              height: 40,
                              width: 350,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 2.0, bottom: 2.0),
                                child: GridView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 7,
                                  ),
                                  itemCount: daysOfWeek.length,
                                  itemBuilder: (BuildContext context, int index) {
                                    return Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        daysOfWeek[index],
                                        style: GoogleFonts.lato(
                                          fontSize: 15,
                                          color: Color.fromARGB(255, 22, 18, 18),
                                          fontWeight: FontWeight.bold),
                                          ),
                                    );
                                  }
                                ),
                              ),
                            ),
                            GridView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              padding: EdgeInsets.only(bottom:5),
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 7,
                                ),
                                itemCount: 7, // Show only 7 items for a single week
                                itemBuilder: (BuildContext context, int index) {
                                  // Calculate the actual date index within the month
                                int actualDateIndex = index + indexOfFirstDayMonth;
                                if (actualDateIndex < 0 || actualDateIndex >= listOfDatesInMonth(_selectedDate).length) {
                                  return Container(); // Return an empty Container for invalid indices
                                  }
                                  return Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: GestureDetector(
                                      onTap: () => setState(() {
                                        _selectedIndex = actualDateIndex;
                                        }),
                                        child: Container(
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            color: actualDateIndex == _selectedIndex
                                            ? Color(0xFF5B8CC7)
                                            : Colors.transparent,
                                            borderRadius: BorderRadius.circular(50),
                                            ),
                                            child: Text(
                                              // Display the actual date based on the calculated index
                                              '${actualDateIndex + 1}',
                                              style: GoogleFonts.lato(
                                              color: actualDateIndex == _selectedIndex
                                              ? Colors.white
                                              : index % 7 == 6
                                              ? Colors.redAccent
                                              : Colors.black,
                                              fontSize: 17,
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                        ],
                        )
                  ),
                 
                  Positioned(
                    top: 140,
                    left: 0,
                    child: // statistik box
                 Container(
                  width: 350,
                  height: 99,
                  decoration: ShapeDecoration(
                    color: Color(0xFF5B8CC7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                        bottomLeft: Radius.circular(31),
                        bottomRight: Radius.circular(31),
                      ),
                    ),
                  ),
                  padding: EdgeInsets.all(8),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom:8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Total writing", 
                            style: GoogleFonts.lato(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white,
                              color: Colors.white,
                            ),
                            ),
                            Text("Streak in a month", 
                            style: GoogleFonts.lato(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white,
                              color: Colors.white,
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("How's baby?",
                                style: GoogleFonts.lato(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white,
                              color: Colors.white,
                              ),
                              ),
                                 Text(" 👶"),
                              ],
                              ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("20 blogs", style: GoogleFonts.lato(
                              fontSize: 12,
                              color: Colors.white)),
                            Text("   4 streak   ", style: GoogleFonts.lato(
                              fontSize: 12,
                              color: Colors.white)),
                            Text("14 weeks", style: GoogleFonts.lato(
                              fontSize: 12,
                              color: Colors.white)),
                          ]
                        ),
                      ],
                      
                    ),
                  ),
                  ),
                    
                  ),
                 
                  ],
                 ),
               ),
            
               
            
                // "Recent Forum" text
                Padding(
                  padding: const EdgeInsets.only(left: 35.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        "Recent Articles",
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.black),
                      ),                    
                  ),
                ),
                SizedBox(height: 10),
                
                // list boxes
                Container(
                  height: 26,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, count) {
                      final textForBox = _textsForBoxes[count];
                      final additionalPadding = count == 0 ? 30.0 : 20.0;
                      return Padding(
                        padding: EdgeInsets.only(left: additionalPadding),
                        child: Container(
                        width: 95,
                        decoration: BoxDecoration(
                           color: Color(0xFF8FC2FF),
                           borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            _textsForBoxes[count],
                            style: GoogleFonts.lato(
                              fontWeight: FontWeight.bold,
                              color: Colors.black, fontSize: 12),
                            ),
                        ),
                      ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20),
            
                // post boxes
                Container(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, count) {
                      final textForBox = postsBoxes[count];
                      final additionalPadding = count == 0 ? 30.0 : 20.0;
                      return Padding(
                        padding: EdgeInsets.only(left: additionalPadding),
                        child: Container(
                        width: 200,
                        decoration: BoxDecoration(
                           color: Color(0xFFDEEDFF),
                           borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              imageAssets[count],
                              fit: BoxFit.cover,
                              ),
                            Text(
                            postsBoxes[count],
                            style: GoogleFonts.lato(
                              fontWeight: FontWeight.bold,
                              color: Colors.black, fontSize: 12),
                            ),
                          ] 
                        ),
                      ),
                      );
                    },
                  ),
                ),

                SizedBox(height: 30),

                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('signed in as ' + user.email!),
                      MaterialButton(
                        onPressed: () {
                          FirebaseAuth.instance.signOut();
                        },
                        color: Colors.deepPurple[200],
                        child: Text('Sign Out'),
                      ),
                    ],
                  ),
                
              ],
            ),
        ),
      ),
    );
  }
}

List<int> listOfDatesInMonth(DateTime currentDate) {
  var selectedMonthFirstDay =
      DateTime(currentDate.year, currentDate.month, currentDate.day);
  var nextMonthFirstDay = DateTime(selectedMonthFirstDay.year,
      selectedMonthFirstDay.month + 1, selectedMonthFirstDay.day);
  var totalDays = nextMonthFirstDay.difference(selectedMonthFirstDay).inDays;

  var listOfDates = List<int>.generate(totalDays, (i) => i + 1);
  return (listOfDates);
}

int getIndexOfFirstDayInMonth(DateTime currentDate) {
  var selectedMonthFirstDay =
      DateTime(currentDate.year, currentDate.month, currentDate.day);
  var day = DateFormat('EEE').format(selectedMonthFirstDay).toUpperCase();

  return daysOfWeek.indexOf(day) - 1;
}

final List<String> daysOfWeek = [
  "M",
  "T",
  "W",
  "T",
  "F",
  "S",
  "S",
];

final List<String> _textsForBoxes = [
    "#babyillness",
    "#habitation",
    "#babygrowth",
    "#tipsandtrick",
];

final List<String> postsBoxes = [
    "Yoga for pregnant women",
    "Meals for pregnancy",
    "How to optimize baby growth",
    "Tips and trick",
];

final List<String> imageAssets = [
  'lib/assets/pregnant.png',
  'lib/assets/meal.png',
  'lib/assets/baby.png',
];
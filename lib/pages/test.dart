
// //arrow button
// // leading: const Icon(
//         //   Icons.arrow_back,
//         //   color: Colors.black,
//         // ),
//         // actions: const [
//         //   Padding(
//         //     padding: EdgeInsets.all(12),
//         //     child: Icon(
//         //       Icons.arrow_forward,
//         //       color: Colors.black,
//         //     ),
//         //   )
//         // ],

// //calendar text
// // Text(
//               //   "Calendar",
//               //   style: GoogleFonts.lato(
//               //       fontWeight: FontWeight.bold,
//               //       fontSize: 22,
//               //       color: Colors.black),
//               // ),
//               // Text(
//               //   DateFormat('MMMM yyyy').format(_selectedDate),
//               //   style: GoogleFonts.lato(
//               //       fontWeight: FontWeight.w600,
//               //       fontSize: 15,
//               //       color: Colors.grey),
//               // )
//               child: GridView.builder(
//                   physics: const NeverScrollableScrollPhysics(),
//                   shrinkWrap: true,
//                   padding: EdgeInsets.all(5),
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 7,
//                   ),
//                   itemCount: listOfDatesInMonth(_selectedDate).length +
//                       indexOfFirstDayMonth,
//                   itemBuilder: (BuildContext context, int index) {
//                     return Padding(
//                       padding: const EdgeInsets.all(10),
//                       child: GestureDetector(
//                         onTap: () => index >= indexOfFirstDayMonth
//                             ? setState(() {
//                                 _selectedIndex = index;
//                               })
//                             : null,
//                         child: Container(
//                             alignment: Alignment.center,
//                             decoration: BoxDecoration(
//                                 color: index == _selectedIndex
//                                     ? Color(0xFFFD00F0F)
//                                     : Colors.transparent,
//                                 borderRadius: BorderRadius.circular(50)),
//                             child: index < indexOfFirstDayMonth
//                                 ? const Text("")
//                                 : Text(
//                                     '${index + 1 - indexOfFirstDayMonth}',
//                                     style: GoogleFonts.lato(
//                                         color: index == _selectedIndex
//                                             ? Colors.white
//                                             : index % 7 == 6
//                                                 ? Colors.redAccent
//                                                 : Colors.black,
//                                         fontSize: 17),
//                                   )),
//                       ),
//                     );
//                   },
//                 ),


// Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 10),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     Container(
//                       width: 90,
//                       height: 25,
//                       decoration: BoxDecoration(
//                          color: Colors.blue,
//                          borderRadius: BorderRadius.circular(15),
//                       )
//                     ),
//                       Container(
//                       width: 90,
//                       height: 25,
//                       decoration: BoxDecoration(
//                          color: Colors.blue,
//                          borderRadius: BorderRadius.circular(15),
//                       )
//                     ),
//                         Container(
//                       width: 90,
//                       height: 25,
//                       decoration: BoxDecoration(
//                          color: Colors.blue,
//                          borderRadius: BorderRadius.circular(15),
//                       )
//                     ),
//                           Container(
//                       width: 90,
//                       height: 25,
//                       decoration: BoxDecoration(
//                          color: Colors.blue,
//                          borderRadius: BorderRadius.circular(15),
//                       )
//                     ),
//                   ],
//                 ),
//               )    

// statistics box
// Container(
                //   height: 150,
                //   width: 350,
                //   decoration: BoxDecoration(
                //       color: Colors.white,
                //       borderRadius: const BorderRadius.only(
                //         topLeft: Radius.circular(20),
                //         topRight: Radius.circular(20),
                //         bottomLeft: Radius.circular(20),
                //         bottomRight: Radius.circular(20),
                //       ),
                //       border: Border.all(color: Colors.black54),
                //       boxShadow: [
                //         BoxShadow(
                //           color: Colors.black.withOpacity(0.1),
                //           spreadRadius: 0.1,
                //           blurRadius: 7,
                //           offset: const Offset(0, 7.75),
                //         ),
                //       ]
                //       ),
                //       padding: EdgeInsets.all(15),
                //       child: Column(
                //         children: [
                //           Text('Statistics',
                //           style: GoogleFonts.lato(
                //             fontSize: 15,
                //             fontWeight: FontWeight.bold)),
                //         ],
                //       ), 
                // ),
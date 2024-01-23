import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';

class MeditatePage extends StatefulWidget {
  const MeditatePage({super.key});

  @override
  State<MeditatePage> createState() => _MeditatePageState();
}

class _MeditatePageState extends State<MeditatePage> {
    String musicUrl = ""; // Insert your music URL 
    String thumbnailImgUrl = ""; // Insert your thumbnail URL 
    var player = AudioPlayer(); 
    bool loaded = false; 
    bool playing = false; 
    
    void loadMusic() async { 
      await player.setUrl(musicUrl); 
      setState(() { 
        loaded = true; 
      }); 
    } 
    
    void playMusic() async { 
      setState(() { 
        playing = true; 
      }); 
      await player.play(); 
    } 
    
    void pauseMusic() async { 
      setState(() { 
        playing = false; 
      }); 
      await player.pause(); 
    } 
    
    @override 
    void initState() { 
      loadMusic(); 
      super.initState(); 
    } 
    
    @override 
    void dispose() { 
      player.dispose(); 
      super.dispose(); 
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

                // "Breathe" text title
                Padding(
                  padding: const EdgeInsets.only(),
                  child: Align(
                    alignment: Alignment.center,
                    child: 
                    Text(
                        "Meditate",
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            color: Colors.black),
                      ),                  
                  ),
                ),
                SizedBox(height: 15),

                //  Calm your heart. text
                Padding(
                  padding: const EdgeInsets.only(),
                  child: Align(
                    alignment: Alignment.center,
                    child: 
                    Flexible(
                      child: Text(
                          "The world sometimes indeed feels a little bit",
                          style: GoogleFonts.lato(
                              fontStyle: FontStyle.italic,
                              fontSize: 15,
                              color: Colors.black),
                        ),
                    ),                  
                  ),
                ),

                //  Calm your heart. text
                Padding(
                  padding: const EdgeInsets.only(),
                  child: Align(
                    alignment: Alignment.center,
                    child: 
                    Flexible(
                      child: Text(
                          "overwhelming. Take a minute or more to ",
                          style: GoogleFonts.lato(
                              fontStyle: FontStyle.italic,
                              fontSize: 15,
                              color: Colors.black),
                        ),
                    ),                  
                  ),
                ),

                //  Let’s take a deep breathe! text
                Padding(
                  padding: const EdgeInsets.only(),
                  child: Align(
                    alignment: Alignment.center,
                    child: 
                    Flexible(
                      child: Text(
                          "calm your mind and soul. 🧘🏻🍃",
                          style: GoogleFonts.lato(
                              fontStyle: FontStyle.italic,
                              fontSize: 15,
                              color: Colors.black),
                        ),
                    ),                  
                  ),
                ),

                SizedBox(height: 35),

                // meditate circle
               Stack(
                alignment: Alignment.center,
                children: [

                  // blue circle border
                  Container(
                    width: 205.0,
                    height: 205.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        color: Color.fromRGBO(178, 213, 255, 1),
                        width: 3.0,
                      ),
                      color: Colors.transparent,
                    ),
                  ),
                  
                  // inner circle in the middle 
                  Container(
                    width: 153.0,
                    height: 153.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(223, 237, 255, 1),
                    ),
                    child: Center(
                    child: Text(
                      '00:00',
                      style: GoogleFonts.lato(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.black),
                    )  
                  ) 
                  ),
                
                ],
              ),
              SizedBox(height: 20),
              
              Center(
                child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Padding(
                       padding: EdgeInsets.only(left: 10, right: 10),
                        child: Container( 
                        height: 50, 
                        width: 50, 
                        decoration: const BoxDecoration( 
                            shape: BoxShape.circle, color: Color.fromRGBO(178, 213, 255, 1)), 
                        child: IconButton( 
                            onPressed: loaded 
                                ? () { 
                                    if (playing) { 
                                      pauseMusic(); 
                                    } else { 
                                      playMusic(); 
                                    } 
                                  } 
                                : null, 
                            icon: Icon( 
                              playing ? Icons.pause : Icons.play_arrow, 
                              color: Colors.white,
                              size: 30,
                            )), 
                      ), 
                      ),
                    ),
                
                    Flexible(
                      flex: 3,
                      child: Padding(
                        padding: EdgeInsets.only(left: 38, right: 38),
                        child: Column(
                          children: [
                            Text(
                              '1-Minute Meditation',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lato(
                                fontSize: 18,
                                color: Colors.black),
                            ),
                            Text(
                              '1 min',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lato(
                                fontSize: 12,
                                color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    
                    Flexible(
                      flex: 1,
                      child: Container(
                        width: 50,
                        height: 50,
                        child: Icon(Icons.star, 
                        size: 50,
                        color: Color.fromRGBO(178, 213, 255, 1)),
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height: 15),

              Center(
                child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Padding(
                       padding: EdgeInsets.only(left: 10, right: 10),
                        child: Container( 
                        height: 50, 
                        width: 50, 
                        decoration: const BoxDecoration( 
                            shape: BoxShape.circle, color: Color.fromRGBO(178, 213, 255, 1)), 
                        child: IconButton( 
                            onPressed: loaded 
                                ? () { 
                                    if (playing) { 
                                      pauseMusic(); 
                                    } else { 
                                      playMusic(); 
                                    } 
                                  } 
                                : null, 
                            icon: Icon( 
                              playing ? Icons.pause : Icons.play_arrow, 
                              color: Colors.white,
                              size: 30,
                            )), 
                      ), 
                      ),
                    ),
                
                    Flexible(
                      flex: 3,
                      child: Padding(
                        padding: EdgeInsets.only(left: 38, right: 38),
                        child: Column(
                          children: [
                            Text(
                              '5-Minute Meditation',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lato(
                                fontSize: 18,
                                color: Colors.black),
                            ),
                            Text(
                              '5 min',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lato(
                                fontSize: 12,
                                color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    
                    Flexible(
                      flex: 1,
                      child: Container(
                        width: 50,
                        height: 50,
                        child: Icon(Icons.star, 
                        size: 50,
                        color: Color.fromRGBO(178, 213, 255, 1)),
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height: 15),

              Center(
                child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Padding(
                       padding: EdgeInsets.only(left: 10, right: 10),
                        child: Container( 
                        height: 50, 
                        width: 50, 
                        decoration: const BoxDecoration( 
                            shape: BoxShape.circle, color: Color.fromRGBO(178, 213, 255, 1)), 
                        child: IconButton( 
                            onPressed: loaded 
                                ? () { 
                                    if (playing) { 
                                      pauseMusic(); 
                                    } else { 
                                      playMusic(); 
                                    } 
                                  } 
                                : null, 
                            icon: Icon( 
                              playing ? Icons.pause : Icons.play_arrow, 
                              color: Colors.white,
                              size: 30,
                            )), 
                      ), 
                      ),
                    ),
                
                    Flexible(
                      flex: 3,
                      child: Padding(
                        padding: EdgeInsets.only(left: 32, right: 32),
                        child: Column(
                          children: [
                            Text(
                              '10-Minute Meditation',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lato(
                                fontSize: 18,
                                color: Colors.black),
                            ),
                            Text(
                              '10 min',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lato(
                                fontSize: 12,
                                color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    
                    Flexible(
                      flex: 1,
                      child: Container(
                        width: 50,
                        height: 50,
                        child: Icon(Icons.star, 
                        size: 50,
                        color: Color.fromRGBO(178, 213, 255, 1)),
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height: 15),

              Center(
                child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Padding(
                       padding: EdgeInsets.only(left: 10, right: 10),
                        child: Container( 
                        height: 50, 
                        width: 50, 
                        decoration: const BoxDecoration( 
                            shape: BoxShape.circle, color: Color.fromRGBO(178, 213, 255, 1)), 
                        child: IconButton( 
                            onPressed: loaded 
                                ? () { 
                                    if (playing) { 
                                      pauseMusic(); 
                                    } else { 
                                      playMusic(); 
                                    } 
                                  } 
                                : null, 
                            icon: Icon( 
                              playing ? Icons.pause : Icons.play_arrow, 
                              color: Colors.white,
                              size: 30,
                            )), 
                      ), 
                      ),
                    ),
                
                    Flexible(
                      flex: 3,
                      child: Padding(
                        padding: EdgeInsets.only(left: 33, right: 32),
                        child: Column(
                          children: [
                            Text(
                              '30-Minute Meditation',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lato(
                                fontSize: 18,
                                color: Colors.black),
                            ),
                            Text(
                              '30 min',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lato(
                                fontSize: 12,
                                color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    
                    Flexible(
                      flex: 1,
                      child: Container(
                        width: 50,
                        height: 50,
                        child: Icon(Icons.star, 
                        size: 50,
                        color: Color.fromRGBO(178, 213, 255, 1)),
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height: 15),

              Center(
                child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Padding(
                       padding: EdgeInsets.only(left: 10, right: 10),
                        child: Container( 
                        height: 50, 
                        width: 50, 
                        decoration: const BoxDecoration( 
                            shape: BoxShape.circle, color: Color.fromRGBO(178, 213, 255, 1)), 
                        child: IconButton( 
                            onPressed: loaded 
                                ? () { 
                                    if (playing) { 
                                      pauseMusic(); 
                                    } else { 
                                      playMusic(); 
                                    } 
                                  } 
                                : null, 
                            icon: Icon( 
                              playing ? Icons.pause : Icons.play_arrow, 
                              color: Colors.white,
                              size: 30,
                            )), 
                      ), 
                      ),
                    ),
                
                    Flexible(
                      flex: 3,
                      child: Padding(
                        padding: EdgeInsets.only(left: 40, right: 50),
                        child: Column(
                          children: [
                            Text(
                              '1-Hour Meditation',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lato(
                                fontSize: 18,
                                color: Colors.black),
                            ),
                            Text(
                              '60 min',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lato(
                                fontSize: 12,
                                color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    
                    Flexible(
                      flex: 1,
                      child: Container(
                        width: 50,
                        height: 50,
                        child: Icon(Icons.star, 
                        size: 50,
                        color: Color.fromRGBO(178, 213, 255, 1)),
                      ),
                    )
                  ],
                ),
              ),      
        ],
        ),
      ),
      ),
    );
  }
}
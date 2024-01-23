import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';

class BreathePage extends StatefulWidget {
  const BreathePage({super.key});

  @override
  State<BreathePage> createState() => _BreathePageState();
}


class _BreathePageState extends State<BreathePage> {

    // music
    String musicUrl = ""; // Insert your music URL 
    String thumbnailImgUrl = ""; // Insert your thumbnail URL 
    var player = AudioPlayer(); 
    bool loaded = false; 
    bool playing = false; 
    

    // dropdown
    String dropdownvalue = '1:00'; 
    final items = [     
    '1:00', 
    '5:00', 
    '15:00', 
    '30:00', 
    '60:00', 
    ]; 
    
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
                SizedBox(height: 80),

                // "Breathe" text title
                Padding(
                  padding: const EdgeInsets.only(),
                  child: Align(
                    alignment: Alignment.center,
                    child: 
                    Text(
                        "Breathe",
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            color: Colors.black),
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
                          "Calm your heart.",
                          style: GoogleFonts.lato(
                              fontStyle: FontStyle.italic,
                              fontSize: 20,
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
                          "Let\’s take a deep breathe! 🌬️",
                          style: GoogleFonts.lato(
                              fontStyle: FontStyle.italic,
                              fontSize: 20,
                              color: Colors.black),
                        ),
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

                Padding( 
                  padding: EdgeInsets.all(30), 
                  child: StreamBuilder( 
                      stream: player.positionStream, 
                      builder: (context, snapshot1) { 
                        final Duration duration = loaded 
                            ? snapshot1.data as Duration 
                            : const Duration(seconds: 0); 
                        return StreamBuilder( 
                            stream: player.bufferedPositionStream, 
                            builder: (context, snapshot2) { 
                              final Duration bufferedDuration = loaded 
                                  ? snapshot2.data as Duration 
                                  : const Duration(seconds: 0); 
                              return SizedBox( 
                                height: 0, 
                                child: Padding( 
                                  padding: const EdgeInsets.symmetric(horizontal: 15), 
                                  child: ProgressBar( 
                                    progress: duration, 
                                    total: 
                                        player.duration ?? const Duration(seconds: 0), 
                                    buffered: bufferedDuration, 
                                    timeLabelPadding: -1, 
                                    timeLabelTextStyle: const TextStyle( 
                                        fontSize: 14, color: Colors.black), 
                                    progressBarColor: Color.fromRGBO(223, 237, 255, 1), 
                                    baseBarColor: Colors.grey[200], 
                                    bufferedBarColor: Colors.grey[350], 
                                    thumbColor: Color.fromRGBO(223, 237, 255, 1), 
                                    onSeek: loaded 
                                        ? (duration) async { 
                                            await player.seek(duration); 
                                          } 
                                        : null, 
                                  ), 
                                ), 
                              ); 
                            }); 
                      }
                      ),    
                ),
                SizedBox(height: 20),


                Column(
                  mainAxisAlignment: MainAxisAlignment.center, 
                  children: [ 
                  Container(
                    padding: EdgeInsets.only(left: 40, right: 40),
                    decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(30) 
                    ),
                    child: DropdownButton( 
                      dropdownColor: Colors.white54,
                      elevation: 10,
                      value: dropdownvalue,                       
                      icon: const Icon(Icons.keyboard_arrow_down),     
                      items: items.map((String items) { 
                        return DropdownMenuItem( 
                          value: items, 
                          child: Text(items), 
                        ); 
                      }).toList(),
                        onChanged: (String? newValue) {  
                        setState(() { 
                          dropdownvalue = newValue!; 
                        }); 
                      }, 
                    ),
                  ), 
                ], 
                ),
                SizedBox(height: 30),

                Padding(
                    padding: EdgeInsets.only(left: 40, right: 40),
                      child: GestureDetector(
                        //
                        child: SizedBox(
                          height: 70, 
                          width: 200,
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(223, 237, 255, 1),
                              borderRadius: BorderRadius.circular(30),
                              ),
                              child: Center(
                                child: Text(
                                  'Login',
                                  style: GoogleFonts.lato(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
              ],
        ),
      ),
      ),
    );
    
  }
}
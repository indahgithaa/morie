import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:intl/intl.dart';
import 'package:morie/pages/break_pages/breathe_second_page.dart';

class BreathePage extends StatefulWidget {
  const BreathePage({Key? key}) : super(key: key);

  @override
  State<BreathePage> createState() => _BreathePageState();
}

class _BreathePageState extends State<BreathePage> {
  String musicUrl = "https://www2.cs.uic.edu/~i101/SoundFiles/BabyElephantWalk60.wav";
  var player = AudioPlayer();
  bool loaded = false;
  bool playing = false;
  String dropdownValue = '1:00';
  final List<String> items = ['1:00', '5:00', '15:00', '30:00', '60:00'];

  void loadMusic() async {
    await player.setUrl(musicUrl);
    setState(() {
      loaded = true;
    });
  }

  void playPauseMusic() async {
    if (playing) {
      await player.pause();
    } else {
      await player.play();
      if (!loaded) {
        loadMusic();
      }
    }
    setState(() {
      playing = !playing;
    });
  }

  @override
  void initState() {
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
          child: Column(
            children: [
              SizedBox(height: 80),

              // "Breathe" text title
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Breathe",
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.black,
                  ),
                ),
              ),

              // Calm your heart text
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Calm your heart.",
                  style: GoogleFonts.lato(
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),

              // Let’s take a deep breathe! text
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Let’s take a deep breath! 🌬️",
                  style: GoogleFonts.lato(
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 50),

              // Circle stack
              Stack(
                alignment: Alignment.center,
                children: [
                  // Blue circle border
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

                  // Inner circle in the middle
                  Container(
                    width: 153.0,
                    height: 153.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(223, 237, 255, 1),
                    ),
                    child: IconButton(
                      icon: Icon(
                        playing ? Icons.pause : Icons.play_arrow,
                        color: Color.fromRGBO(178, 213, 255, 1),
                        size: 80,
                      ),
                      onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => BreatheSecondPage()),
                          );
                        },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Progress bar
              Padding(
                padding: EdgeInsets.all(30),
                child: StreamBuilder(
                  stream: player.positionStream,
                  builder: (context, snapshot1) {
                    final Duration duration = loaded ? snapshot1.data as Duration : const Duration(seconds: 0);
                    return StreamBuilder(
                      stream: player.bufferedPositionStream,
                      builder: (context, snapshot2) {
                        final Duration bufferedDuration = loaded ? snapshot2.data as Duration : const Duration(seconds: 0);
                        return SizedBox(
                          height: 0,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: ProgressBar(
                              progress: duration,
                              total: player.duration ?? const Duration(seconds: 0),
                              buffered: bufferedDuration,
                              timeLabelPadding: -1,
                              timeLabelTextStyle: const TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
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
                      },
                    );
                  },
                ),
              ),
              SizedBox(height: 20),

              // Dropdown
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: DropdownButton(
                  dropdownColor: Color.fromRGBO(223, 237, 255, 1),
                  elevation: 10,
                  value: dropdownValue,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items: items.map((String item) {
                    return DropdownMenuItem(
                      value: item,
                      child: Text(
                        item,
                        style: GoogleFonts.lato(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
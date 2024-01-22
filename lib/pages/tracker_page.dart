import 'package:flutter/material.dart';

class TrackerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 76, // Assuming 'fem' is defined somewhere
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xffcac4d0)),
            ),
            margin: EdgeInsets.only(top: 35.0),
          ),
          Positioned(
            // rectangle73KTc (116:435)
            left: 60,
            top: 0,
            child: Align(
              child: SizedBox(
                width: 232,
                height: 25,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffd9d9d9),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            // vectorpQN (116:433)
            left: 67,
            top: 6,
            child: Align(
              child: Image.asset(
                'assets/VectorG.png',
                width: 16,
                height: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

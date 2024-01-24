import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen({super.key});

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}
class _AddPostScreenState extends State<AddPostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topLeft,
            image: AssetImage('assets/circle_bg_topleft.png'),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(left: 20, right: 20, top: 60),
                child: SvgPicture.asset('assets/icons/menu.svg'),
              ),
              Container(
                margin: EdgeInsets.only(top: 50, left: 15, right: 15),
                child: Text(
                  "What's up, Mom?",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

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
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 300,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Stack(
                  children: [
                    TextField(
                      autofocus: false,
                      maxLines: null,
                      expands: true,
                      textAlignVertical: TextAlignVertical.top,
                      decoration: InputDecoration(
                        hintText: "Write something...",
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 30, horizontal: 20),
                        hintStyle: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.w400),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        filled: true,
                        fillColor: Color(0xff6C90BC)
                      ),
                    ),
                  ],
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}

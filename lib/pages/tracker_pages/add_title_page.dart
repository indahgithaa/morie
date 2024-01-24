import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:morie/pages/tracker_pages/notify_me_page.dart';

class AddTitlePostScreen extends StatefulWidget {
  const AddTitlePostScreen({super.key});

  @override
  State<AddTitlePostScreen> createState() => _AddTitlePostScreenState();
}

class _AddTitlePostScreenState extends State<AddTitlePostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topLeft,
            image: AssetImage('assets/circle_bg_topleft.png'),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(left: 20, right: 20, top: 60),
                child: SvgPicture.asset('assets/icons/menu.svg'),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 15, right: 15),
                child: Text(
                  "Title your post!",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    TextField(
                      autofocus: false,
                      maxLines: null,
                      expands: true,
                      textAlignVertical: TextAlignVertical.top,
                      decoration: InputDecoration(
                        hintText: "Keep it under 150 words..",
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 30, horizontal: 20),
                        hintStyle: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.w400,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        filled: true,
                        fillColor: Color(0xff6C90BC),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 15, right: 15),
                child: Text(
                  "Choose tags related to your post:",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.normal),
                ),
              ),
              SizedBox(height: 10),
              Container(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        children: [
                          Transform.scale(
                            scale: 1.7,
                            child: Checkbox(
                              value: false,
                              side: BorderSide(color: Colors.black, width: 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3),
                              ),
                              fillColor:
                                  MaterialStateProperty.all(Color(0xffD9D9D9)),
                              activeColor: Color(0xff0070F4),
                              onChanged: (v) {},
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            child: Text(
                              "#Baby Illness",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        children: [
                          Transform.scale(
                            scale: 1.7,
                            child: Checkbox(
                              value: false,
                              side: BorderSide(color: Colors.black, width: 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3),
                              ),
                              fillColor:
                                  MaterialStateProperty.all(Color(0xffD9D9D9)),
                              activeColor: Color(0xff0070F4),
                              onChanged: (v) {},
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            child: Text(
                              "#Habitation",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        children: [
                          Transform.scale(
                            scale: 1.7,
                            child: Checkbox(
                              value: false,
                              side: BorderSide(color: Colors.black, width: 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3),
                              ),
                              fillColor:
                                  MaterialStateProperty.all(Color(0xffD9D9D9)),
                              activeColor: Color(0xff0070F4),
                              onChanged: (v) {},
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            child: Text(
                              "#Baby Growth",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        children: [
                          Transform.scale(
                            scale: 1.7,
                            child: Checkbox(
                              value: false,
                              side: BorderSide(color: Colors.black, width: 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3),
                              ),
                              fillColor:
                                  MaterialStateProperty.all(Color(0xffD9D9D9)),
                              activeColor: Color(0xff0070F4),
                              onChanged: (v) {},
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            child: Text(
                              "#Tips and Trick",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        children: [
                          Transform.scale(
                            scale: 1.7,
                            child: Checkbox(
                              value: false,
                              side: BorderSide(color: Colors.black, width: 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3),
                              ),
                              fillColor:
                                  MaterialStateProperty.all(Color(0xffD9D9D9)),
                              activeColor: Color(0xff0070F4),
                              onChanged: (v) {},
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            child: Text(
                              "Add other option",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.italic,
                                color: Colors.grey[300],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 110,
                        height: 40,
                        padding: EdgeInsets.only(top: 4),
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        NotifyMeScreen()));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffA7CFFF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            "Send",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}

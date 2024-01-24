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
              SizedBox(height: 25),
              Container(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      child: Row(children: [
                        Transform.scale(
                            scale: 2,
                            child: Checkbox(
                                value: false,
                                side: BorderSide(color: Colors.black, width: 1),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(3)),
                                fillColor:
                                    MaterialStateProperty.all(Color(0xffD9D9D9)),
                                activeColor: Color(0xff0070F4),
                                onChanged: (v) {})),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Private",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 3),
                            Text("Only you can see this post",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.normal))
                          ],
                        )
                      ]),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      child: Row(children: [
                        Transform.scale(
                          scale: 2,
                          child: Checkbox(
                            value: false,
                            side: BorderSide(color: Colors.black, width: 1),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3)),
                            fillColor:
                                MaterialStateProperty.all(Color(0xffD9D9D9)),
                            activeColor: Color(0xff0070F4),
                            onChanged: (v) {}
                          )
                        ),
                        SizedBox(width: 8),
                        Expanded(
                            child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Open for Discussion",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 3),
                              Text("Ask help from experienced mothers out there",
                                  style: TextStyle(
                                      fontSize: 13, fontWeight: FontWeight.normal))
                              ],
                            )
                          )
                        ]
                      ),
                    ),
                    
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

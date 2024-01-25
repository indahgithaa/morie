import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotifyMeScreen extends StatefulWidget {
  const NotifyMeScreen({super.key});

  @override
  State<NotifyMeScreen> createState() => _NotifyMeScreenState();
}

class _NotifyMeScreenState extends State<NotifyMeScreen> {
  bool isChecked = false;
  double scale = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2fffe),
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
                  "You will be notified when someone replies.",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 50),
              Container(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        children: [
                          Transform.scale(
                            scale: 2,
                            child: Checkbox(
                              value: isChecked,
    side: BorderSide(color: Colors.black, width: 1),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(3),
    ),
    fillColor: MaterialStateProperty.all(isChecked ? Color(0xff0070F4) : Color(0xffD9D9D9)),
    activeColor: Color(0xff0070F4),
    onChanged: (value) {
      setState(() {
        isChecked = value ?? false;
        scale = isChecked ? 2.0 : 1.0;
      });
    },
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Notify Me",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "You will be notified once someone replied to your post.",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        children: [
                          Transform.scale(
                            scale: 2,
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
                          SizedBox(width: 8),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Do not notify",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 3),
                                Text(
                                  "You won't get notified unless you open the forum section.",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
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
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (BuildContext context) => AddTitlePostScreen(),
                            //   ),
                            // );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffA7CFFF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            "Confirm",
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

import 'package:flutter/material.dart';

class ConsultationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2fffe),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10, top: 61),
                child: Text(
                  'Find Professionals',
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    height: 1.0416666667,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
              Container(
                width: 232,
                height: 25,
                decoration: BoxDecoration(
                  color: Color(0xffe3e8e8),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 1, 13, 0),
                      width: 16,
                      height: 16,
                      child: Icon(Icons.search, size: 16),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 1),
                      child: Text(
                        'search a doctor or issue...',
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 1.9166666667,
                          fontStyle: FontStyle.italic,
                          color: Color(0xff707070),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 223, top: 10),
                    child: Text(
                      'Categories',
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        height: 1.6666666667,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'View All',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        height: 1.9166666667,
                        color: Color(0xff6b90bb),
                      ),
                    ),
                  ),
                ],
              ),
               Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 17.5),
              height: 25,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
                      width: 89,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xff6dadf9),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Center(
                        child: Text(
                          'Mental Health',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            height: 1.9166666667,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 11),
                    Container(
                      width: 89,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xff6dadf9),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Center(
                        child: Text(
                          'Pregnancy',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            height: 1.9166666667,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 11),
                    Container(
                      width: 89,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xff6dadf9),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Center(
                        child: Text(
                          'Children',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            height: 1.9166666667,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 11),
                    Container(
                      width: 89,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xff6dadf9),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Center(
                        child: Text(
                          'Nutritions',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            height: 1.9166666667,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ],
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

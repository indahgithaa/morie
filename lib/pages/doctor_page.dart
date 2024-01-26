import 'package:flutter/material.dart';

class DoctorPage extends StatelessWidget {
  double fem = 1.0;
  double ffem = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Relax Page"),
      ),
      body: Stack(
        children: [
          Positioned(
            left: 15,
            top: 70,
            child: Container(
              width: 199,
              height: 25,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                    width: 25,
                    height: 25,
                    child: Image.network(
                      '[Image URL1]',
                      width: 25,
                      height: 25,
                    ),
                  ),
                  Text(
                    'Chat A Doctor',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      height: 0.9583333333,
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 26 * fem,
            top: 122.5 * fem,
            child: Container(
              width: 315 * fem,
              height: 103 * fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0 * fem, 1.5 * fem, 10 * fem, 0 * fem),
                    width: 124 * fem,
                    height: 95 * fem,
                    child: Image.network(
                      '[Image URL2]',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: 161 * fem,
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(3 * fem, 0 * fem, 0 * fem, 2 * fem),
                          constraints: BoxConstraints(
                            maxWidth: 500 * fem,
                          ),
                          child: Text(
                            'dr. Amrita Putri Santoso, Sp.KJ',
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Positioned(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 1.5 * fem),
                            width: double.infinity,
                            child: Text(
                              'Psychiatrist',
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.6428571429 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 2 * fem, 6.5 * fem),
                                width: 23 * fem,
                                height: 24 * fem,
                                child: Image.network(
                                  '[Image URL3]',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 65 * fem, 4.5 * fem),
                                child: Text(
                                  '4.9/5.0',
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.6428571429 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0 * fem, 9.5 * fem, 5 * fem, 0 * fem),
                                width: 10 * fem,
                                height: 10 * fem,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5 * fem),
                                  color: Color(0xff0070f3),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0 * fem, 7.5 * fem, 0 * fem, 0 * fem),
                                child: Text(
                                  'online',
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 11 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 2.0909090909 * ffem / fem,
                                    color: Color(0xff1d92ff),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 16 * fem,
            top: 231 * fem,
            child: Container(
              width: 341 * fem,
              height: 65 * fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 17 * fem, 0 * fem),
                    width: 102 * fem,
                    height: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0 * fem,
                          top: 10 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 100 * fem,
                              height: 55 * fem,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10 * fem),
                                  color: Color(0xff0070f3),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 10 * fem,
                          top: 17.5 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 25 * fem,
                              height: 23 * fem,
                              child: Text(
                                '491',
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 14 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.6428571429 * ffem / fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 10 * fem,
                          top: 37.5 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 48 * fem,
                              height: 23 * fem,
                              child: Text(
                                'Client(s)',
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.9166666667 * ffem / fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 18 * fem, 0 * fem),
                    width: 102 * fem,
                    height: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0 * fem,
                          top: 10 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 100 * fem,
                              height: 55 * fem,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10 * fem),
                                  color: Color(0xff0070f3),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 10 * fem,
                          top: 17.5 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 28 * fem,
                              height: 23 * fem,
                              child: Text(
                                '92%',
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 14 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.6428571429 * ffem / fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 10 * fem,
                          top: 37.5 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 81 * fem,
                              height: 23 * fem,
                              child: Text(
                                'Recommended',
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 11.5 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.9166666667 * ffem / fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 102 * fem,
                    height: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0 * fem,
                          top: 10 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 100 * fem,
                              height: 55 * fem,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10 * fem),
                                  color: Color(0xff0070f3),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 10 * fem,
                          top: 17.5 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 25 * fem,
                              height: 23 * fem,
                              child: Text(
                                '200',
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 14 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.6428571429 * ffem / fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 10 * fem,
                          top: 37.5 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 55 * fem,
                              height: 23 * fem,
                              child: Text(
                                'Reviews',
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 14 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.6428571429 * ffem / fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 258.5 * fem,
            top: 0 * fem,
            child: Center(
              child: Align(
                child: SizedBox(
                  width: 59 * fem,
                  height: 23 * fem,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 10 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 2.3 * ffem / fem,
                        color: Color(0xff6b90bb),
                      ),
                      children: [
                        TextSpan(
                          text: 'All Reviews ',
                        ),
                        TextSpan(
                          text: '>',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 10 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 2.3 * ffem / fem,
                            color: Color(0xff6b90bb),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
         // ... (Previous code)

          Positioned(
            left: 258.5 * fem,
            top: 71 * fem,  // Adjusted the top position
            child: Center(
              child: Align(
                child: SizedBox(
                  width: 59 * fem,
                  height: 23 * fem,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 10 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 2.3 * ffem / fem,
                        color: Color(0xff6b90bb),
                      ),
                      children: [
                        TextSpan(
                          text: 'All Reviews ',
                        ),
                        TextSpan(
                          text: '>',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 10 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 2.3 * ffem / fem,
                            color: Color(0xff6b90bb),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0 * fem,
            top: 92.5 * fem,  // Adjusted the top position
            child: Align(
              child: SizedBox(
                width: 327 * fem,
                height: 57 * fem,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff6b90bb),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 52 * fem,
            top: 101 * fem,  // Adjusted the top position
            child: Center(
              child: Align(
                child: SizedBox(
                  width: 217 * fem,
                  height: 45 * fem,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 10 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.5 * ffem / fem,
                        fontStyle: FontStyle.italic,
                        color: Color(0xffffffff),
                      ),
                      children: [
                        TextSpan(
                          text: 'Very recommended! Dr. Amrita is very helpful and friendly. Thank you!\n',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 10 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.5 * ffem / fem,
                            fontStyle: FontStyle.italic,
                            color: Color(0xffffffff),
                          ),
                        ),
                        TextSpan(
                          text: 'Andri Permatasari',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 10 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.5 * ffem / fem,
                            fontStyle: FontStyle.italic,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          // ... Additional Positioned widgets and components ...
        ],
      ),
    );
  }
}
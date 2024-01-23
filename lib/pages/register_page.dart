import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterPage extends StatefulWidget {
  final VoidCallback showLoginPage;

  const RegisterPage({
    Key? key,
    required this.showLoginPage,
  }) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // text controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  Future signUp() async {
    if (passwordConfirmed()) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
    );
    }
  }

  bool passwordConfirmed() {
    if (_passwordController.text.trim() == 
    _confirmPasswordController.text.trim()) {
      return true;
    } else {
      return false; 
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 50),
                // Sign Up
                Text(
                  'Sign Up',
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(height: 15),
            
                // continue with google
                Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10.0), //buat align
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(FontAwesomeIcons.google),
                              SizedBox(width: 8),
                              Text(
                              'Continue with Google',
                              style: GoogleFonts.lato(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                              ),
                            ],
                          ),
                      ),
                    ),
                  const SizedBox(height: 10),
            
                // continue with facebook
                Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10.0), //buat align
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(FontAwesomeIcons.facebook),
                              SizedBox(width: 8),
                              Text(
                              'Continue with Facebook',
                              style: GoogleFonts.lato(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                              ),
                            ],
                          ),
                      ),
                    ),
                  const SizedBox(height: 10),
            
                // continue with twitter
                Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10.0), //buat align
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(FontAwesomeIcons.twitter),
                              SizedBox(width: 8),
                              Text(
                              'Continue with Twitter',
                              style: GoogleFonts.lato(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                              ),
                            ],
                          ),
                      ),
                    ),
                  const SizedBox(height: 10),
            
                // or
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'or',
                        style: GoogleFonts.lato(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
            
                // email textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    style: GoogleFonts.lato(),
                    controller: _emailController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color.fromRGBO(109, 173, 249, 1)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      hintText: 'Email',
                      fillColor: Colors.grey[200],
                      filled: true,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
            
               // phone number textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    style: GoogleFonts.lato(),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color.fromRGBO(109, 173, 249, 1)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      hintText: 'Phone Number',
                      fillColor: Colors.grey[200],
                      filled: true,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),

                  // date of birth text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Date of Birth',
                        style: GoogleFonts.lato(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
            
                // date of birth textfields
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // day
                      const Spacer(flex: 1),
                      Container(
                        width: MediaQuery.of(context).size.width / 3 - 32,
                        height: 35,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: SingleChildScrollView(
                          child: TextField(
                            maxLength: 4,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Day',
                              hintStyle: GoogleFonts.lato(fontSize: 14.0),
                              contentPadding: EdgeInsets.only(top: 4.0, left: 10.0, right: 10.0, bottom: 5.0),
                              border: InputBorder.none,
                              suffixIcon: Padding(
                                padding: EdgeInsets.only(bottom: 10.0, left: 15.0),
                                child: Icon(Icons.arrow_downward, size: 20),
                              ),
                            ),
                          ),
                        ),
                      ),

                      const Spacer(flex: 1),
                      Container(
                        width: MediaQuery.of(context).size.width / 3 - 32,
                        height: 35,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: SingleChildScrollView(
                          child: TextField(
                            maxLength: 4,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Month',
                              hintStyle: GoogleFonts.lato(fontSize: 14.0),
                              contentPadding: EdgeInsets.only(top: 4.0, left: 10.0, right: 10.0, bottom: 5.0),
                              border: InputBorder.none,
                              suffixIcon: Padding(
                                padding: EdgeInsets.only(bottom: 10.0, left: 15.0),
                                child: Icon(Icons.arrow_downward, size: 20),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Spacer(flex: 1),
                    
                      Container(
                        width: MediaQuery.of(context).size.width / 3 - 32,
                        height: 35,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: SingleChildScrollView(
                          child: TextField(
                            maxLength: 4,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Year',
                              hintStyle: GoogleFonts.lato(fontSize: 14.0),
                              contentPadding: EdgeInsets.only(top: 4.0, left: 10.0, right: 10.0, bottom: 5.0),
                              border: InputBorder.none,
                              suffixIcon: Padding(
                                padding: EdgeInsets.only(bottom: 10.0, left: 15.0),
                                child: Icon(Icons.arrow_downward, size: 20),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Spacer(flex: 1),

                    ],
                  ),
                ),
                const SizedBox(height: 18),
            
                // password textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    style: GoogleFonts.lato(),
                    obscureText: true,
                    controller: _passwordController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color.fromRGBO(109, 173, 249, 1)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      hintText: 'Password',
                      fillColor: Colors.grey[200],
                      filled: true,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
            
                // confirm password textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    style: GoogleFonts.lato(),
                    controller: _confirmPasswordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color.fromRGBO(109, 173, 249, 1)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      hintText: 'Confirm Password',
                      fillColor: Colors.grey[200],
                      filled: true,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
            
                // register button
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: GestureDetector(
                      onTap: signUp,
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(109, 173, 249, 1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            'Register',
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                          ),
                        ),
                      ),
                                        ),
                    ),
                  ),
                  const SizedBox(height: 15),
            
                // have an account? text
                Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Have an account?',
                          style: GoogleFonts.lato(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 2),
                        GestureDetector(
                          onTap: widget.showLoginPage,
                          child: Text(
                            'Sign In',
                            style: GoogleFonts.lato(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              decoration:TextDecoration.underline,
                              decorationColor: Colors.blue,
                              ),
                          ),
                        ),
                      ],
                    ),
                  const SizedBox(height: 10),
                  const SizedBox(height: 70),
                ],
            ),
          ),
        ),
      ),
    );
  }
}
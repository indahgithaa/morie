import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

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
                const Text(
                  'Sign Up',
                  style: TextStyle(
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
                      child: const Center(
                        child: Text(
                          'Continue with Google',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                        ),
                      ),
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
                      child: const Center(
                        child: Text(
                          'Continue with Facebook',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                        ),
                      ),
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
                      child: const Center(
                        child: Text(
                          'Continue with Twitter',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  ),
                  const SizedBox(height: 10),
            
                // or
                const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'or',
                        style: TextStyle(
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
                    controller: _emailController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
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
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      hintText: 'Phone Number',
                      fillColor: Colors.grey[200],
                      filled: true,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),

                  // date of birth text
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Date of Birth',
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                          ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
            
                // date of birth textfields
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Spacer(flex: 1),
                      Container(
                        width: MediaQuery.of(context).size.width / 3 - 32,
                        height: 35,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: const SingleChildScrollView(
                          child: TextField(
                            maxLength: 4,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Day',
                              hintStyle: TextStyle(fontSize: 15.0),
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
                        child: const SingleChildScrollView(
                          child: TextField(
                            maxLength: 4,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Month',
                              hintStyle: TextStyle(fontSize: 15.0),
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
                        child: const SingleChildScrollView(
                          child: TextField(
                            maxLength: 4,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Year',
                              hintStyle: TextStyle(fontSize: 15.0),
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
                const SizedBox(height: 15),
            
                // password textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    obscureText: true,
                    controller: _passwordController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
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
                    controller: _confirmPasswordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
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
                        child: const Center(
                          child: Text(
                            'Register',
                            style: TextStyle(
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
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Have an account?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        onTap: widget.showLoginPage,
                        child: Text(
                          ' Sign in',
                          style: TextStyle(
                            color: Color.fromRGBO(0, 112, 244, 1),
                            fontWeight: FontWeight.bold,
                            ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  
                ],
            ),
          ),
        ),
      ),
    );
  }
}
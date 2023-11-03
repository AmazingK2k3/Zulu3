import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _fullNameController = TextEditingController();

  Future<void> _signup() async {
    try {
      final UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );

      // You can save additional user information to Firestore or other databases here.

      if (userCredential.user != null) {
        // Registration successful, navigate to the next page.
        Navigator.pushReplacementNamed(context, '/home'); // Change '/home' to your desired route.
      }
    } catch (e) {
      print('Error: $e');
      // Handle registration errors here.
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 360,
        height: 800,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Positioned(
              left: 248,
              top: -65,
              child: Container(
                width: 181,
                height: 181,
                decoration: ShapeDecoration(
                  color: Color(0xFFFF4B3A),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 18,
              top: 106,
              child: SizedBox(
                width: 178,
                height: 42,
                child: Text(
                  'Sign Up\n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 36.41,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    height: 0.03,
                  ),
                ),
              ),
            ),
            // Full Name input
            Positioned(
              left: 18,
              top: 173,
              child: Container(
                width: 324.01,
                height: 93,
                child: Stack(
                  children: [
                    Positioned(
                      left: 2,
                      top: 0,
                      child: SizedBox(
                        width: 91,
                        child: Text(
                          'Full Name',
                          style: TextStyle(
                            color: Color(0xFF9796A1),
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 28,
                      child: Container(
                        width: 324.01,
                        height: 65,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Color(0xFFEEEEEE)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3FE8E8E8),
                              blurRadius: 45,
                              offset: Offset(15, 20),
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: _fullNameController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter your full name',
                              hintStyle: TextStyle(
                                color: Color(0xFFC4C4C4),
                                fontSize: 17,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Email input
            Positioned(
              left: 18,
              top: 291,
              child: Container(
                width: 324.01,
                height: 93,
                child: Stack(
                  children: [
                    Positioned(
                      left: 2.01,
                      top: 0,
                      child: SizedBox(
                        width: 56,
                        child: Text(
                          'E-mail',
                          style: TextStyle(
                            color: Color(0xFF9796A1),
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 28,
                      child: Container(
                        width: 324.01,
                        height: 65,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Color(0xFFEEEEEE)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3FE8E8E8),
                              blurRadius: 45,
                              offset: Offset(15, 20),
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Your email or phone',
                              hintStyle: TextStyle(
                                color: Color(0xFFC4C4C4),
                                fontSize: 17,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Password input
            Positioned(
              left: 18,
              top: 409,
              child: Container(
                width: 324.01,
                height: 93,
                child: Stack(
                  children: [
                    Positioned(
                      left: 2,
                      top: 0,
                      child: SizedBox(
                        width: 101,
                        child: Text(
                          'Password',
                          style: TextStyle(
                            color: Color(0xFF9796A1),
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 28,
                      child: Container(
                        width: 324.01,
                        height: 65,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Color(0xFFEEEEEE)),
                                                      borderRadius: BorderRadius.circular(10),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3FE8E8E8),
                            blurRadius: 45,
                            offset: Offset(15, 20),
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _passwordController,
                          obscureText: true, // Hide password text
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter your password',
                            hintStyle: TextStyle(
                              color: Color(0xFFC4C4C4),
                              fontSize: 17,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 64,
              top: 627,
              child: SizedBox(
                width: 218,
                height: 10,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Already have an account? ',
                        style: TextStyle(
                          color: Color(0xFF5B5B5E),
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: 'Login',
                        style: TextStyle(
                          color: Color(0xFFFE724C),
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Positioned(
              left: 47,
              top: 531,
              child: GestureDetector(
                onTap: () {
                  _signup();
                },
                child: Container(
                  width: 262,
                  height: 63,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFA4A0C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Sign Up',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w900,
                                  height: 0.06,
                                  letterSpacing: 0.10,
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
            ),
          ],
        ),
      ),
    );
  }
}

                           

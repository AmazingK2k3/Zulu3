import 'package:flutter/material.dart';
import 'signup_page.dart'; // Import the signup page if it's in a separate file


class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 360,
        height: 800,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: Color(0xFFFF4B3A),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 28,
              top: 187,
              child: Container(
                width: 295,
                height: 270.59,
                child: Stack(
                  children: [
                    Positioned(
                      left: 19.64,
                      top: 21.82,
                      child: Container(
                        width: 275.36,
                        height: 235.59,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('Images/cat.png'), // Replace with your image file path
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 543,
              child: Container(
                width: 360,
                height: 257,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.21),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3FD3D1D8),
                      blurRadius: 36.43,
                      offset: Offset(18.21, 18.21),
                      spreadRadius: 0,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 19,
              top: 576,
              child: SizedBox(
                width: 318,
                child: Text(
                  'Order at your ease',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 616,
              child: SizedBox(
                width: 297,
                child: Opacity(
                  opacity: 0.50,
                  child: Text(
                    'Order from Campus canteen or the cafe’s nearby villas for immediate tummy fillings!!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      height: 0.09,
                      letterSpacing: 0.30,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 49,
              top: 712,
              child: GestureDetector(
                onTap: () {
                  // Navigate to the signup/registration page
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignupPage()));
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
                  child: Center(
                    child: Text(
                      'Get Started',
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

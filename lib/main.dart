import 'package:flutter/material.dart';
import 'OnboardingPage.dart';
import 'package:firebase_core/firebase_core.dart';




// void main() {
//   runApp(MyApp());
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Required to use async/await
  await Firebase.initializeApp();
  runApp(MyApp());
}





class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      routes: {
        '/onboardingPage': (context) => OnboardingPage(),
      },
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to the next page when the splash screen is clicked
        Navigator.of(context).pushNamed('/onboardingPage');
      },
      child: SingleChildScrollView( // Wrap the content in a SingleChildScrollView
        child: Container(
          width: 360,
          height: 800,
          padding: const EdgeInsets.only(top: 128, bottom: 172),
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Color(0xFFFF4B3A),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 500,
                height: 500,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('Images/Zulu.png'), // Replace with your image file path
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              // Add additional content here
            ],
          ),
        ),
      ),
    );
  }
}



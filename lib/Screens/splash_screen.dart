import 'dart:async';
import 'package:flutter/material.dart';
import 'package:marham/Screens/HomeScreenComponents/home_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: screenHeight * 0.4),
                child: SizedBox(
                  width: screenWidth * 0.8,
                  child: const FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      "Medical App",
                      style: TextStyle
                        (
                        color: Colors.white,
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // Copyright Text
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(top: screenHeight * 0.4),
                child: SizedBox(
                  width: screenWidth * 0.9,
                  child: const FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      "© Powered by MetaXperts",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'level_screen.dart'; // AfterSplash를 import 합니다.

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _imageSize = 0;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 50), () {
      setState(() {
        _imageSize = 300;
      });
    });
    Future.delayed(
      Duration(seconds: 2),
          () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LevelScreen()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: TweenAnimationBuilder(
          duration: Duration(seconds: 1),
          tween: Tween<double>(begin: 0, end: _imageSize),
          builder: (context, size, _) {
            return Image.asset(
              'assets/images/splash.png',
              width: size,
              height: size,
            );
          },
        ),
      ),
    );
  }
}

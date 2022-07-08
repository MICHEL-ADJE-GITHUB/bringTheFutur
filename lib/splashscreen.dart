import 'package:flutter/material.dart';
import 'package:real_utopiaa/onboarding.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => OnBoarding(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Color(0XFF01062c),
                Color(0XFF0085aa),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )),
            child: Center(
                child: Image.asset(
              'assets/images/logo_white.png',
              height: MediaQuery.of(context).size.height / 1,
              width: MediaQuery.of(context).size.width,
            ))));
  }
}

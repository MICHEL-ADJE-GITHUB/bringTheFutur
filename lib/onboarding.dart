import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'HomePage.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0XFF01062c),
              Color(0XFF0085aa),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            )
          ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Image.asset('assets/images/onboarding.jpeg'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Bring the future est une application de réalité augmentée simple et facile à utilisée qui permet de modelisé des objets virtuels dans un environement physique depuis son smartphone',
                  style: GoogleFonts.sourceSans3(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              GestureDetector(
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                    ),
                    child: Icon(Icons.arrow_right_alt_rounded,size: 50,)),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomePage()));
                },
              )
            ]),
      ),
    );
  }
}

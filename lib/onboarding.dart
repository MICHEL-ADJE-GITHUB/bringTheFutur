import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_utopiaa/HomePage.dart';
import 'package:real_utopiaa/const.dart';

class onboarding extends StatefulWidget {
  const onboarding({Key? key}) : super(key: key);

  @override
  _onboardingState createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
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
                      color: ksecondaryColor,
                    ),
                    child: Icon(Icons.arrow_right_outlined,size: 30,)),
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

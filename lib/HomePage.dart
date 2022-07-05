import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_utopiaa/ArchitectCatalog.dart';
import 'package:real_utopiaa/UserCatalog.dart';
import 'package:real_utopiaa/const.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        child: Column(mainAxisAlignment: MainAxisAlignment.start, 
        children: [
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 10),
            height: 350,
            width: 350,
            //changer l'image
            child: Image.asset('assets/images/onboarding.jpeg'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome to the ', style: GoogleFonts.poppins(fontSize: 25)),
              Text('futur',
                  style: GoogleFonts.poppins(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                child: Container(
                  height: 34,
                  width: 139,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      'SCAN',
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 55, 159, 243)),
                    ),
                  ),
                  padding: EdgeInsets.only(left: 40, right: 25),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => UserCatalog()));
                },
              ),
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      'VISUALISE',
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 55, 159, 243)),
                    ),
                  ),
                  padding: EdgeInsets.only(left: 40, right: 25),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => ArchitectCatalog()));
                },
              ),
            ],
          )
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'catalogue.dart';

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
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 35),
            child: Container(
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width/0.5,
              //changer l'image
              child: Image.asset('assets/images/image2.png'),
            ),
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
                  height: MediaQuery.of(context).size.height/4,
                  width: MediaQuery.of(context).size.width/2.5,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white
                    ),
                    color: Colors.white12,
                  ),
                  child: Center(
                    child: Text(
                      'SCAN',
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                          
                    ),
                  ),
                ),
                onTap: () {
                },
              ),
              GestureDetector(
                child: Container(
                  height: MediaQuery.of(context).size.height/4,
                  width: MediaQuery.of(context).size.width/2.5,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white
                    ),
                    shape: BoxShape.circle,
                    color: Colors.white12,
                  ),
                  child: Center(
                    child: Text(
                      'VISUALISE',
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => CataloguePage()));
                },
              ),
            ],
          )
        ]),
      ),
    );
  }
}

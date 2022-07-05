

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_utopiaa/Architectview.dart';
import 'package:real_utopiaa/Architectview1.dart';
import 'package:real_utopiaa/HomePage.dart';
import 'package:real_utopiaa/Userview.dart';
import 'package:real_utopiaa/const.dart';

class ArchitectCatalog extends StatefulWidget {
  const ArchitectCatalog({ Key? key }) : super(key: key);

  @override
  _ArchitectCatalogState createState() => _ArchitectCatalogState();
}

class _ArchitectCatalogState extends State<ArchitectCatalog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 300, bottom: 50, top: 60),
              child: GestureDetector(
                child: Icon(
                  Icons.arrow_circle_left_rounded,
                  color: Color.fromARGB(255, 55, 159, 243),
                  size: 45,
                ),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomePage()));
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              GestureDetector(
                    child: Container(
                      height: 30,
                      width: 76,
                      margin:EdgeInsets.only(left: 15,bottom: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: ksecondaryColor,
                      ),
                      child: Text(
                        '3D View',
                        style: GoogleFonts.poppins(
                            fontSize: 11,
                            color: Colors.white),
                      ),
                      padding:EdgeInsets.only(left: 12, right: 12, top: 7, bottom: 5),
                      
                      
                    ),
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => Userview()));
                    },
                  ),
                  GestureDetector(
                    child: Container(
                      height: 30,
                      width: 76,
                      margin:EdgeInsets.only(right: 15,bottom: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: ksecondaryColor,
                      ),
                      child: Text(
                        'Upload',
                        style: GoogleFonts.poppins(
                            fontSize: 11,
                            color: Colors.white),
                      ),
                     padding:EdgeInsets.only(left: 15, right: 12, top: 7, bottom: 5),
                    ),
                   
                  ),
              ],
            ),
            Center(
              child: Text(
                'Catalog Architect',
                style: GoogleFonts.poppins(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 55, 159, 243)),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 88,
            ),
            Container(
              height: 85,
              width: 337,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 55, 159, 243),
                  borderRadius: BorderRadius.circular(7)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 73,
                    width: 107,
                    child: Image.asset('assets/house1.png'),
                  ),
                  Text('Home 1',
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  GestureDetector(
                    child: Container(
                      height: 30,
                      width: 76,
                      margin:EdgeInsets.only(right: 14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: ksecondaryColor,
                      ),
                      child: Text(
                        '3D View',
                        style: GoogleFonts.poppins(
                            fontSize: 9,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      padding:EdgeInsets.only(left:20 , right: 10, top: 6, bottom: 5),
                      
                      
                      
                    ),
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => Architectview()));
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 43,
            ),
            Container(
              height: 85,
              width: 337,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 55, 159, 243),
                  borderRadius: BorderRadius.circular(7)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 73,
                    width: 107,
                    child: Image.asset('assets/house2.png'),
                  ),
                  Text('Home 2',
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                   GestureDetector(
                    child: Container(
                      height: 30,
                      width: 76,
                      margin:EdgeInsets.only(right: 14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: ksecondaryColor,
                      ),
                      child: Text(
                        '3D View',
                        style: GoogleFonts.poppins(
                            fontSize: 9,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      padding:EdgeInsets.only(left:20 , right: 10, top: 6, bottom: 5),
                      
                      
                      
                    ),
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => Architectview1()));
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 43,
            ),
            Container(
              height: 85,
              width: 337,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 55, 159, 243),
                  borderRadius: BorderRadius.circular(7)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 73,
                    width: 107,
                    child: Image.asset('assets/house3.png'),
                  ),
                  Text('Home 3',
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  GestureDetector(
                    child: Container(
                      height: 30,
                      width: 76,
                      margin:EdgeInsets.only(right: 14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: ksecondaryColor,
                      ),
                      child: Text(
                        '3D View',
                        style: GoogleFonts.poppins(
                            fontSize: 9,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      padding:EdgeInsets.only(left:20 , right: 10, top: 6, bottom: 5),
                      
                      
                      
                    ),
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => Userview()));
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 43,
            ),
            Container(
              height: 85,
              width: 337,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 55, 159, 243),
                  borderRadius: BorderRadius.circular(7)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 73,
                    width: 107,
                    child: Image.asset('assets/house4.png'),
                  ),
                  Text('Home 4',
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  GestureDetector(
                    child: Container(
                      height: 30,
                      width: 76,
                      margin:EdgeInsets.only(right: 14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: ksecondaryColor,
                      ),
                      child: Text(
                        '3D View',
                        style: GoogleFonts.poppins(
                            fontSize: 9,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      padding:EdgeInsets.only(left:20 , right: 10, top: 6, bottom: 5),
                      
                      
                      
                    ),
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => Userview()));
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 43,
            ),
          ],
        ),
      ),
    );
  }
}
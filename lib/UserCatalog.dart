import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_utopiaa/HomePage.dart';
import 'package:real_utopiaa/Userview.dart';
import 'package:real_utopiaa/Userview1.dart';
import 'package:real_utopiaa/Userview2.dart';
import 'package:real_utopiaa/Userview3.dart';
import 'package:real_utopiaa/const.dart';

class UserCatalog extends StatefulWidget {
  const UserCatalog({Key? key}) : super(key: key);

  @override
  _UserCatalogState createState() => _UserCatalogState();
}

class _UserCatalogState extends State<UserCatalog> {
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
            Center(
              child: Text(
                'Catalog User',
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
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: ksecondaryColor,
                      ),
                      child: Text(
                        'View',
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      padding:
                          EdgeInsets.only(left: 20, right: 10, top: 5, bottom: 5),
                      margin: EdgeInsets.only(
                        right: 14,
                      ),
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
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: ksecondaryColor,
                      ),
                      child: Text(
                        'View',
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      padding:
                          EdgeInsets.only(left: 20, right: 10, top: 5, bottom: 5),
                      margin: EdgeInsets.only(
                        right: 14,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => Userview1()));
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
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: ksecondaryColor,
                      ),
                      child: Text(
                        'View',
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      padding:
                          EdgeInsets.only(left: 20, right: 10, top: 5, bottom: 5),
                      margin: EdgeInsets.only(
                        right: 14,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => Userview2()));
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
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: ksecondaryColor,
                      ),
                      child: Text(
                        'View',
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      padding:
                          EdgeInsets.only(left: 20, right: 10, top: 5, bottom: 5),
                      margin: EdgeInsets.only(
                        right: 14,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => Userview3()));
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

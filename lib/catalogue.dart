import 'package:flutter/material.dart';

import 'userview/userview.dart';
import 'userview/userview1.dart';
import 'userview/userview2.dart';
import 'userview/userview3.dart';
import 'userview/userview4.dart';
import 'userview/userview5.dart';
import 'userview/userview6.dart';
import 'userview/userview7.dart';
import 'userview/userview8.dart';
import 'userview/userview9.dart';

class CataloguePage extends StatefulWidget {
  const CataloguePage({Key? key}) : super(key: key);

  @override
  State<CataloguePage> createState() => _CataloguePageState();
}

class _CataloguePageState extends State<CataloguePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Color(0XFF01062c),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 25,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('C A T A L O G U E'),
        centerTitle: true,
      ),
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
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'M E U B L E S',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Userview()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    height: MediaQuery.of(context).size.height / 4.5,
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: Column(
                      children: [
                        Expanded(
                            child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              'CHAISE',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/chaise5.png'),
                                      fit: BoxFit.cover)),
                            )),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Userview1()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    height: MediaQuery.of(context).size.height / 4.5,
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: Column(
                      children: [
                        Expanded(
                            child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              'TRANSAT',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/chaise2.png'),
                                      fit: BoxFit.cover)),
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Userview2()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    height: MediaQuery.of(context).size.height / 4.5,
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: Column(
                      children: [
                        Expanded(
                            child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5, bottom: 5),
                            child: Text(
                              'FAUTEUIL',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/fauteuil.png'),
                                      fit: BoxFit.contain)),
                            )),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=> Userview3()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    height: MediaQuery.of(context).size.height / 4.5,
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: Column(
                      children: [
                        Expanded(
                            child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              'FAUTEUIL 2',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/fauteuil1.png'),
                                      fit: BoxFit.fill)),
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Userview4()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    height: MediaQuery.of(context).size.height / 4.5,
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: Column(
                      children: [
                        Expanded(
                            child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5, bottom: 5),
                            child: Text(
                              'TABLE',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/table1.png'),
                                      fit: BoxFit.contain)),
                            )),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Userview5()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    height: MediaQuery.of(context).size.height / 4.5,
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: Column(
                      children: [
                        Expanded(
                            child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              'TABLE 1',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/table2.png'),
                                      fit: BoxFit.fill)),
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'E L E C T R O M E N A G E R ',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Userview6()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    height: MediaQuery.of(context).size.height / 4.5,
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: Column(
                      children: [
                        Expanded(
                            child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5, bottom: 5),
                            child: Text(
                              'TV',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/flat_screen_tv.png'),
                                      fit: BoxFit.contain)),
                            )),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Userview7()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    height: MediaQuery.of(context).size.height / 4.5,
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: Column(
                      children: [
                        Expanded(
                            child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              'TV 2',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/old_tv.png'),
                                      fit: BoxFit.fill)),
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'A U T R E S ',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Userview8()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    height: MediaQuery.of(context).size.height / 4.5,
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: Column(
                      children: [
                        Expanded(
                            child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5, bottom: 5),
                            child: Text(
                              'BUREAU',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/bureau_futuriste.png'),
                                      fit: BoxFit.contain)),
                            )),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Userview9()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    height: MediaQuery.of(context).size.height / 4.5,
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: Column(
                      children: [
                        Expanded(
                            child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              'SERVEUR',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/serveur.png'),
                                      fit: BoxFit.fill)),
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

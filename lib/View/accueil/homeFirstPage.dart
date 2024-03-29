// ignore_for_file: prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';
import 'package:planteco/View/accueil/plantation.dart';
import 'package:planteco/View/accueil/visualisation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../Bluetooth/MainPage.dart';
import '../../menuDrawer.dart';
import 'accueilParams.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

class HomeFirstPage extends StatefulWidget {
  const HomeFirstPage({Key? key}) : super(key: key);

  @override
  State<HomeFirstPage> createState() => _HomeFirstPageState();
}

class _HomeFirstPageState extends State<HomeFirstPage> {
  
  @override
  Widget build(BuildContext context,) {
    
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        drawer: const MenuDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // ClipPath(
              //   clipper: NavStyle(),
              //   child: Container(
              //     width: double.infinity,
              //     height: 200,
              //     color: Colors.green,
              //   ),
              // ),
              Expanded(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child:  Text(
                          FirebaseAuth.instance.currentUser!.displayName!,
                          style: TextStyle(fontFamily: 'Montserrat'),
                        ),
                      ),
                      // ignore: prefer_const_constructors
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        // width: MediaQuery.of(context).size.width,
                        children: [
                          const Text(
                            "Tableaux de bord",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 10,
                          ),
                          // ignore: prefer_const_constructors
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            child: const Text(
                              'AH',
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(5),
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(20)),
                child: TabBar(
                  indicator: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20)),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  tabs: const [
                    Tab(
                      child: Text(
                        "Paramètres",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                           fontSize: 12
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Visualisation",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                         fontSize: 12
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Plantations",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 12
                        ),
                      ),
                    ),
                  ],
                ),
              ),
                const Expanded(
                  flex: 5,
                  child: TabBarView(
                    children: [AccueilParams(),Visualisation(), Collection()],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}






class NavStyle extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 100);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 110);
    path.lineTo(size.width, size.height - 200);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

import 'package:flutter/material.dart';
import 'package:planteco/View/accueil/plantation.dart';
import '../../menuDrawer.dart';
import 'accueilParams.dart';

class HomeFirstPage extends StatefulWidget {
  const HomeFirstPage({Key? key}) : super(key: key);

  @override
  State<HomeFirstPage> createState() => _HomeFirstPageState();
}

class _HomeFirstPageState extends State<HomeFirstPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 20),
              child: const Icon(
                Icons.notifications,
                size: 30,
                color: Colors.black,
              ),
            ),
          ],
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
                        child: const Text(
                          "Mardi 06 septembre 2022",
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
                            "Bonjour Madame Audrey",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 15,
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
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Plantations",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Expanded(
                  flex: 5,
                  child: TabBarView(
                    children: [AccueilParams(), Collection()],
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

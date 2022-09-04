import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../menuDrawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        actions:  [
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: const Icon(Icons.notifications,size: 30,color: Colors.black,),
          ),
        ],
       
      ),
      drawer: MenuDrawer(),
      body: Column(
        children: [
      
        ],
      ),
    );
  }
}



// class NavStyle extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = Path();
//     path.lineTo(0, size.height - 100);
//     path.quadraticBezierTo(
//         size.width / 2, size.height, size.width, size.height - 110);
//     path.lineTo(size.width, size.height - 200);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     return true;
//   }
// }

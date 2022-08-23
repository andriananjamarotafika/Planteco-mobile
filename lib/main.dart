import 'package:flutter/material.dart';
import 'package:planteco/page/home.dart';
import 'page/login.dart';
import 'page/splashScreen.dart';
import 'package:hexcolor/hexcolor.dart';
import 'page/inscription.dart';
import 'navbar.dart';
import 'page/home.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Planteco',
      theme: ThemeData( scaffoldBackgroundColor: HexColor("#F6F6F6"),),
      // theme: ThemeData(
      //   primarySwatch: Colors.brown,
      // ),
      home:  const NavBar(),
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    
    // ignore: prefer_const_constructors
    return Scaffold(
      // ignore: prefer_const_constructors
      body: Center(
        child: const Text("Salut"),
          ),

    );
  }
}

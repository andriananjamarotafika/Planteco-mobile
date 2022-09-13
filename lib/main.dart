import 'package:flutter/material.dart';
import 'view/login.dart';
import 'package:hexcolor/hexcolor.dart';
import 'dart:async';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        "LoginPage": (BuildContext context) => const LoginPage(),
         "MyHomePage": (BuildContext context) => const MyHomePage(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Planteco',
      theme: ThemeData(
        scaffoldBackgroundColor: HexColor("#F6F6F6"),
      ),
      
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //==========GERE LE TEMPS D'ACTUALISATION DU LOGIN==================//
  starTimer() async {
    Duration duration = const Duration(seconds: 5);
    return Timer(duration, navigatePage);
  }

  void navigatePage() =>
      Navigator.of(context).pushReplacementNamed('LoginPage');

  @override
  void initState() {
    super.initState();
    starTimer();
  }
  //================================================================//

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 250,
          height: 250,
          child: Column(
            children: [
              Image.asset(
                'images/logo.png',
                width: 200,
                height: 200,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 150,
                height: 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: const LinearProgressIndicator(
                  color: Colors.green,
                  backgroundColor: Color.fromARGB(255, 225, 225, 225),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

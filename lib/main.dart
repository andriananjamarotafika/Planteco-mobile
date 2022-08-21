import 'package:flutter/material.dart' show AppBar, BuildContext, Center, Colors, Column, EdgeInsets, Icon, Icons, InputDecoration, Key, MainAxisAlignment, MaterialApp, Padding, Scaffold, State, StatefulWidget, StatelessWidget, Text, TextField, TextInputType, Widget, runApp;
import 'page/login.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Planteco',
      // theme: ThemeData(
      //   primarySwatch: Colors.brown,
      // ),
      home: const MyHomePage(),
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
    
    return Scaffold(
      body: Center(
        
          ),

    );
  }
}

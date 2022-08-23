import 'package:flutter/material.dart';

class trainingPage extends StatefulWidget {
  const trainingPage({Key? key}) : super(key: key);

  @override
  State<trainingPage> createState() => _trainingPageState();
}

class _trainingPageState extends State<trainingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,  
        title: const Padding(
          padding: EdgeInsets.only(top: 10),
          child: Text(
            "Formation",
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                ),
          ),
        ),
      ),
    );
  }
}
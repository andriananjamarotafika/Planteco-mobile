import 'package:flutter/material.dart';

class settingPage extends StatefulWidget {
  const settingPage({Key? key}) : super(key: key);

  @override
  State<settingPage> createState() => _settingPageState();
}

class _settingPageState extends State<settingPage> {
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
            "Paramètre",
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
import 'package:flutter/material.dart';

class dataPage extends StatefulWidget {
  const dataPage({Key? key}) : super(key: key);

  @override
  State<dataPage> createState() => _dataPageState();
}

class _dataPageState extends State<dataPage> {
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
            "Collection",
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
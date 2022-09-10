import 'package:flutter/material.dart';
import '../../menuDrawer.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Paramètre",style: TextStyle(fontFamily: 'Montserrat',fontWeight: FontWeight.bold,color: Colors.black),),
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
      body: Container(
        margin: EdgeInsets.all(20),
        
      ),
    );
  }
}
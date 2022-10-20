import 'package:flutter/material.dart';
import 'package:planteco/Models/dataCollection.dart';
import '../../menuDrawer.dart';
import '../components/getListView.dart';

class CollectPage extends StatefulWidget {
  const CollectPage({super.key});

  @override
  State<CollectPage> createState() => _CollectPageState();
}

class _CollectPageState extends State<CollectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Collection",style: TextStyle(fontFamily: 'Montserrat',fontWeight: FontWeight.bold,color: Colors.black),),
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
        child: getListView(dataFormation),
        
      ),
    );
  }
}
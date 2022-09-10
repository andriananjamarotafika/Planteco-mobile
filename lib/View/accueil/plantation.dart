import 'package:flutter/material.dart';
import '../../Models/dataCollection.dart';
import '../components/getListView.dart';

class Collection extends StatefulWidget {
  const Collection({Key? key,}) : super(key: key);

  @override
  State<Collection> createState() => _CollectionState();
}

class _CollectionState extends State<Collection> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: getListView(dataFormation),
        
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.add),
      ),
    );
  }
}
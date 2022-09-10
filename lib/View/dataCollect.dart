import 'package:flutter/material.dart';
import '../Models/dataCollection.dart';
import 'components/getListView.dart';


class DataPage extends StatefulWidget {
  const DataPage({Key? key}) : super(key: key);

  @override
  State<DataPage> createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Accéder aux formations",
          style: TextStyle(
            fontFamily: 'Montserrat',
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        child: getListView(dataFormation),
      ),
    );
  }
}



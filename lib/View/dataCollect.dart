import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';


class dataPage extends StatefulWidget {
  const dataPage({Key? key}) : super(key: key);

  @override
  State<dataPage> createState() => _dataPageState();
}

class _dataPageState extends State<dataPage> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            tooltip: 'Open shopping cart',
            onPressed: () {
              
            },
          ),
          
        ],
        title: const Text(
          "Collection",
          style: TextStyle(
              fontFamily: 'Montserrat', fontSize: 30, color: Colors.white),
        ),
        backgroundColor: HexColor("#85B86B"),
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        
        child: getListView(),
        
      ),
  
    );
  }
}


List<DataCollection> item = [ 
  DataCollection("s","15",2,0.5),
  DataCollection("q","18",2,0.5),
  DataCollection("qx","15",2,0.5),
  DataCollection("c","15",2,0.5),
  DataCollection("w","15",2,0.5),
];

Widget getListView(){
  double _w = 1000;
  List<DataCollection> listitem = item;
  var listview = ListView.builder(
          padding: EdgeInsets.only(left: 15,right: 15),
          physics:
              const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          itemCount: item.length,
          itemBuilder: (BuildContext context, int index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              delay: const Duration(milliseconds: 100),
              child: SlideAnimation(
                duration: const Duration(milliseconds: 2500),
                curve: Curves.fastLinearToSlowEaseIn,
                child: FadeInAnimation(
                  curve: Curves.fastLinearToSlowEaseIn,
                  duration: const Duration(milliseconds: 2500),
                  child: Container(
                    margin: EdgeInsets.only(bottom: _w / 50,top: _w / 50),
                    height: _w / 4,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 10,
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                    child: Text(listitem[index].image),
                  ),
                ),
              ),
            );
          },
        );

  // var listview = ListView.builder(itemCount: listitem.length, itemBuilder: (context, val){
  //   return Container(
  //     child: Text(listitem[val].image),
  //   );
  // });
  return listview;
}

// ListTile(
//       title: Text(listitem[val]),
//       leading: const Icon(Icons.abc),
//       onTap: (){
//         debugPrint(listitem[val]);
//       },
//     );

class DataCollection{
  final String image;
  final String temperature;
  final int eau;
  final double time;

  DataCollection(this.image, this.temperature, this.eau, this.time);

}
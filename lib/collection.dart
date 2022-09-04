import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:hexcolor/hexcolor.dart';

class Collection extends StatefulWidget {
  const Collection({Key? key,}) : super(key: key);

  @override
  State<Collection> createState() => _CollectionState();
}

class _CollectionState extends State<Collection> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        },
        backgroundColor: HexColor("#85B86B"),
        child: const Icon(Icons.add),
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
  double _w = 500;
  List<DataCollection> listitem = item;
  var listview = ListView.builder(
          padding: EdgeInsets.all(_w / 30),
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
                    margin: EdgeInsets.only(bottom: _w / 20),
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
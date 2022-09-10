import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter/material.dart';
import '../../Models/ParametreAccueil.dart';


Widget listParametreAccueil(item) {
  double _w = 400;
  List<ParametreAccueil> listitem = item;
  var listview = ListView.builder(
    padding: const EdgeInsets.only(left: 15, right: 15),
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
              margin: EdgeInsets.only(bottom: _w / 50, top: _w / 50),
              height: _w / 4,
              decoration: BoxDecoration(
                color: Colors.white,
               // borderRadius: const BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "images/temperature.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      //    decoration: const BoxDecoration(
                      //   gradient: LinearGradient(
                      //     begin: Alignment.centerLeft,
                      //     end: Alignment.centerRight,
                      //     colors: [
                      //       Colors.black,
                      //       Colors.white,
                      //     ],
                      //   ),
                      // ),
                      // colorBlendMode: BlendMode.modulate,
                      // child: Image.asset(
                      //   "images/temperature.jpg",
                      //   fit: BoxFit.cover,
                      child: Container(
                        
                          width: 100,
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: <Color>[
                              Colors.transparent,
                              Color.fromARGB(143, 255, 255, 255),
                              Colors.white,
                            ],
                          ))
                          //color: Colors.white.withOpacity(0.5),
                         ),

                      // ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Text(listitem[index].titre)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
  return listview;
}

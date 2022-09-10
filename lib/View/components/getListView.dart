import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter/material.dart';

import '../../Models/dataCollection.dart';

Widget getListView(item) {
  double _w = 500;
  List<DataCollection> list = item;
  var listview = ListView.builder(
    padding: const EdgeInsets.only(left: 10, right: 10),
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
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(width: 15,),
                  ClipRRect(
                   borderRadius: BorderRadius.circular(10.0), 
                    child: Image.asset(list[index].image,fit: BoxFit.cover,
                     width: 100,
                    height: 100,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: 150,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text(
                        list[index].titre,
                        style:
                            const TextStyle(fontFamily: 'Montserrat', fontSize: 25),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text("${list[index].temperature}°C | ${list[index].eau}X | 50% | 25j",
                          style: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          ))
                    ]),
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

//listitem[index].image

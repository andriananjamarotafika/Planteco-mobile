
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nb_utils/nb_utils.dart';
import 'Models/weau/DemoSemiCircleWidget.dart';
import 'Models/weau/DemoTemperatureWidget.dart';
import 'Models/weau/view_modal.dart';
import 'package:provider/provider.dart';



Widget eau(BuildContext context) {
    return ChangeNotifierProvider<ViewModel>(
      create: (context) => ViewModel(),
      child: Consumer<ViewModel>(
        builder: (context, provider, child) {
          return  AnimatedContainer(
            height: context.height(),
            width: context.width(),
            duration: 500.milliseconds,
            //color: getBackGroundColor(provider.myList[1].value),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    //CERCLE EXTERIEUR
                    AnimatedContainer(
                      duration: 500.milliseconds,
                      width: 260,
                      height: 260,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(1),
                          shape: BoxShape.circle),
                    ),

                    //CERCLE INTERIEUR
                    DemoSemiCircleWidget(
                      diameter: 200,
                      sweepAngle: ((provider.myList[1].value - 15) * 12.0)
                          .clamp(0.0, 180.0),
                      color: getSliderColor(provider.myList[1].value),
                    ),

                    //COULEUR CERCLE INTERIEUR
                    AnimatedContainer(
                      duration: 500.milliseconds,
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                          color: context.cardColor,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3),
                            ),
                          ]),
                    ),

                    //INDICATION TEMPERATURE A L'INTERIEUR DU CERCLE
                    Text(
                      '${convertToInt(provider.myList[1].value)}°C',
                      style: boldTextStyle(size: 60, weight: FontWeight.w600),
                    ),
                  ],
                ),

                //BARRE SLIDER EN BAS
                DemoTemperatureWidget(
                  temperature: provider.myList[1],
                  onChanged: (value) {
                    provider.changeValue(value);
                  },
                ).paddingBottom(16.0),
              ],
            ),
          );
        },
      ),
    );
  }


int convertToInt(double value) {
  return value.toInt();
}

Color? getSliderColor(double value) {
  int newValue = value.toInt();
  Color? newColor;
  if (newValue >= 16 && newValue < 19) {
    newColor = HexColor("#85B86B");
  } else if (newValue >= 19 && newValue < 22) {
    newColor = Colors.teal;
  } else if (newValue >= 22 && newValue < 25) {
    newColor = Colors.blue;
  } else if (newValue >= 25 && newValue < 28) {
    newColor = Colors.purple;
  } else if (newValue >= 28) {
    newColor = Colors.red;
  }

  return newColor;
}


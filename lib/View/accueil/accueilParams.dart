import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:slide_popup_dialog_null_safety/slide_popup_dialog.dart'
    as slideDialog;
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

import '../../Services/link_acceuil_chat_bluetooth.dart';

class AccueilParams extends StatefulWidget {
  const AccueilParams({super.key});

  @override
  State<AccueilParams> createState() => _AccueilParamsState();
}

class _AccueilParamsState extends State<AccueilParams> {
  LinkBluetooth linkBluetooth = new LinkBluetooth();
  int currentSliderValueTemp = 15;
  int currentSliderValueHum = 15;
  int currentSliderValueSpr = 30;
  int humidite = 30;
  int temperature = 10;
  int spray = 100;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          AnimationConfiguration.staggeredList(
            delay: const Duration(milliseconds: 100),
            position: 1,
            child: SlideAnimation(
              duration: const Duration(milliseconds: 2500),
              curve: Curves.fastLinearToSlowEaseIn,
              child: FadeInAnimation(
                curve: Curves.fastLinearToSlowEaseIn,
                duration: const Duration(milliseconds: 2500),
                child: Column(
                  children: [
                    //TEMPERATURE
                    TextButton(
                      onPressed: _showDialog1,
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 10, top: 10),
                        height: 100,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage("images/temperature.png"),
                              fit: BoxFit.cover),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 10,
                              spreadRadius: 5,
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Temperature",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Colors.red),
                                ),
                                Text("${temperature} °C",
                                    style: const TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 40,
                                        color: Colors.black)),
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            )
                          ],
                        ),
                      ),
                    ),

                    //HUMIDITE
                    TextButton(
                      onPressed: _showDialog2,
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 10, top: 10),
                        height: 100,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage("images/humidite.png"),
                              fit: BoxFit.cover),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 10,
                              spreadRadius: 5,
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Humidité",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Colors.orange),
                                ),
                                Text("$humidite%",
                                    style: const TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 40,
                                        color: Colors.black)),
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            )
                          ],
                        ),
                      ),
                    ),

                    //ARROSSAGE
                    TextButton(
                      onPressed: _showDialog3,
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 10, top: 10),
                        height: 100,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage("images/arrosage.png"),
                              fit: BoxFit.cover),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 10,
                              spreadRadius: 5,
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "Arrosage",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Colors.blue),
                                ),
                                Text("Spray",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 40,
                                        color: Colors.black)),
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            )
                          ],
                        ),
                      ),
                    ),

                    //RECOLTE
                    TextButton(
                      onPressed: null,
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 10, top: 10),
                        height: 400 / 4,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage("images/recolte.png"),
                              fit: BoxFit.cover),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 10,
                              spreadRadius: 5,
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "Récolte",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Colors.green),
                                ),
                                Text("60j",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 40,
                                        color: Colors.black)),
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void _showDialog1() {
    slideDialog.showSlideDialog(
      context: context,
      child: Column(
        children: [
          // ignore: prefer_const_constructors
          Text("Changez la temperature de la serre",
              style: const TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 18,
              )),
          const SizedBox(
            height: 20,
          ),
          const Divider(
            thickness: 3,
            indent: 20,
            endIndent: 20,
            color: Colors.red,
          ),
          const SizedBox(
            height: 20,
          ),
          SleekCircularSlider(
            min: 10,
            max: 60,
            appearance: CircularSliderAppearance(
                size: 250,
                animationEnabled: true,
                infoProperties: InfoProperties(
                  bottomLabelText: 'Deg',
                  bottomLabelStyle: TextStyle(
                    fontSize: 25,
                  ),
                  mainLabelStyle: TextStyle(
                    fontSize: 70,
                    fontFamily: 'Montserrat',
                  ),
                   modifier: (double value) {
                  final roundedValue = (value.floor().toInt()).toString();
                  return '$roundedValue ';
                },
                
                ),
                customColors: CustomSliderColors(
                  hideShadow: true,
                  trackColor: const Color.fromARGB(255, 0, 0, 0),
                  dotColor: Colors.white,
                  progressBarColor: Colors.red,
                ),
                customWidths: CustomSliderWidths(
                  trackWidth: 4,
                  progressBarWidth: 20,
                  handlerSize: 10,
                )),
            initialValue: temperature.toDouble(),
            onChange: (double value) {
              currentSliderValueTemp = value.toInt();
              linkBluetooth.afficheTemp(currentSliderValueTemp.toString());
            },
            // onChangeStart: (double startValue) {
            //   // callback providing a starting value (when a pan gesture starts)
            // },
            // onChangeEnd: (double endValue) {
            //   // ucallback providing an ending value (when a pan gesture ends)
            // },
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            AnimatedButton(
                height: 70,
                width: 300,
                text: 'Envois les données',
                isReverse: true,
                selectedTextColor: Colors.black,
                transitionType: TransitionType.LEFT_TO_RIGHT,
                backgroundColor: Color.fromARGB(161, 244, 67, 54),
                borderColor: Colors.white,
                borderRadius: 50,
                borderWidth: 2,
                onPress: () {
                  setState(() {
                      temperature = currentSliderValueTemp.toInt();
                      linkBluetooth.sendData();
                    });
                    return;
                },
              ),
            ],
          )
        ],
      ),
    );
  }

   void _showDialog2() {
    slideDialog.showSlideDialog(
      context: context,
      child: Column(
        children: [
          // ignore: prefer_const_constructors
          Text("Changez l' Humidité de la serre",
              style: const TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 18,
              )),
          const SizedBox(
            height: 20,
          ),
          const Divider(
            thickness: 3,
            indent: 20,
            endIndent: 20,
            color: Colors.orange,
          ),
          const SizedBox(
            height: 20,
          ),
          SleekCircularSlider(
            min: 10,
            max: 60,
            appearance: CircularSliderAppearance(
                size: 250,
                animationEnabled: true,
                infoProperties: InfoProperties(
                  bottomLabelText: 'Pr',
                  bottomLabelStyle: TextStyle(
                    fontSize: 25,
                  ),
                  mainLabelStyle: TextStyle(
                    fontSize: 70,
                    fontFamily: 'Montserrat',
                  ),
                   modifier: (double value) {
                  final roundedValue = (value.floor().toInt()).toString();
                  return '$roundedValue ';
                },
                
                ),
                customColors: CustomSliderColors(
                  hideShadow: true,
                  trackColor: const Color.fromARGB(255, 0, 0, 0),
                  dotColor: Colors.white,
                  progressBarColor: Colors.orange,
                ),
                customWidths: CustomSliderWidths(
                  trackWidth: 4,
                  progressBarWidth: 20,
                  handlerSize: 10,
                )),
            initialValue: humidite.toDouble(),
            onChange: (double value) {
              currentSliderValueHum = value.toInt();
              linkBluetooth.afficheHum(currentSliderValueHum.toString());
            },
            // onChangeStart: (double startValue) {
            //   // callback providing a starting value (when a pan gesture starts)
            // },
            // onChangeEnd: (double endValue) {
            //   // ucallback providing an ending value (when a pan gesture ends)
            // },
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            AnimatedButton(
                height: 70,
                width: 300,
                text: 'Envois les données',
                isReverse: true,
                selectedTextColor: Colors.black,
                transitionType: TransitionType.LEFT_TO_RIGHT,
                backgroundColor: Color.fromARGB(167, 255, 153, 0),
                borderColor: Colors.white,
                borderRadius: 50,
                borderWidth: 2,
                onPress: () {
                  setState(() {
                      humidite = currentSliderValueHum.toInt();
                      linkBluetooth.sendData();
                    });
                    return;
                },
              ),
            ],
          )
        ],
      ),
    );
  }

   void _showDialog3() {
    slideDialog.showSlideDialog(
      context: context,
      child: Column(
        children: [
          // ignore: prefer_const_constructors
          Text("Changez l' intensité du spray",
              style: const TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 18,
              )),
          const SizedBox(
            height: 20,
          ),
          const Divider(
            thickness: 3,
            indent: 20,
            endIndent: 20,
            color: Colors.blue,
          ),
          const SizedBox(
            height: 20,
          ),
          SleekCircularSlider(
            min: 0,
            max: 256,
            appearance: CircularSliderAppearance(
                size: 250,
                animationEnabled: true,
                infoProperties: InfoProperties(
                  bottomLabelText: 'tr/s',
                  bottomLabelStyle: TextStyle(
                    fontSize: 25,
                  ),
                  mainLabelStyle: TextStyle(
                    fontSize: 70,
                    fontFamily: 'Montserrat',
                  ),
                   modifier: (double value) {
                  final roundedValue = (value.floor().toInt()).toString();
                  return '$roundedValue ';
                },
                
                ),
                customColors: CustomSliderColors(
                  hideShadow: true,
                  trackColor: const Color.fromARGB(255, 0, 0, 0),
                  dotColor: Colors.white,
                  progressBarColor: Colors.blue,
                ),
                customWidths: CustomSliderWidths(
                  trackWidth: 4,
                  progressBarWidth: 20,
                  handlerSize: 10,
                )),
            initialValue: spray.toDouble(),
            onChange: (double value) {
              currentSliderValueSpr = value.toInt();
              linkBluetooth.afficheSpr(currentSliderValueSpr.toString());
            },
            // onChangeStart: (double startValue) {
            //   // callback providing a starting value (when a pan gesture starts)
            // },
            // onChangeEnd: (double endValue) {
            //   // ucallback providing an ending value (when a pan gesture ends)
            // },
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            AnimatedButton(
                height: 70,
                width: 300,
                text: 'Envois les données',
                isReverse: true,
                selectedTextColor: Colors.black,
                transitionType: TransitionType.LEFT_TO_RIGHT,
                backgroundColor: Color.fromARGB(167, 0, 179, 255),
                borderColor: Colors.white,
                borderRadius: 50,
                borderWidth: 2,
                onPress: () {
                  setState(() {
                      spray = currentSliderValueSpr.toInt();
                      linkBluetooth.sendData();
                    });
                    return;
                },
              ),
            ],
          )
        ],
      ),
    );
  }



  // void _showDialog2() {
  //   slideDialog.showSlideDialog(
  //     context: context,
  //     child: Column(
  //       children: [
  //         Text("Changez l' Humidite de la serre"),
  //         SleekCircularSlider(
  //           min: 0,
  //           max: 100,
  //           appearance: CircularSliderAppearance(
  //               customColors: CustomSliderColors(
  //                 hideShadow: true,
  //                 trackColor: Color(0XFFFFF176),
  //                 dotColor: Color(0XFFFAFAFA),
  //                 progressBarColor: Color.fromARGB(255, 230, 19, 0),
  //               ),
  //               customWidths: CustomSliderWidths(progressBarWidth: 50)),
  //           initialValue: humidite.toDouble(),
  //           onChange: (double value) {
  //             currentSliderValueHum = value.toInt() + 1;
  //             // callback providing a value while its being changed (with a pan gesture)
  //             print(value);
  //           },
  //           onChangeStart: (double startValue) {
  //             // callback providing a starting value (when a pan gesture starts)
  //           },
  //           onChangeEnd: (double endValue) {
  //             // ucallback providing an ending value (when a pan gesture ends)
  //           },
  //         ),
  //         Row(
  //           children: [
  //             AnimatedButton(
  //               width: 200,
  //               text: 'SUBMIT',
  //               selectedTextColor: Colors.black,
  //               transitionType: TransitionType.BOTTOM_TO_TOP,
  //               textStyle: TextStyle(
  //                   fontSize: 28,
  //                   letterSpacing: 5,
  //                   color: Colors.deepOrange,
  //                   fontWeight: FontWeight.w300), onPress: () {  },
  //             ),
  //             ElevatedButton(
  //                 onPressed: null,
  //                 child: Container(
  //                   child: Text("Annuler"),
  //                 )),
  //             SizedBox(
  //               width: 10,
  //             ),
  //             ElevatedButton(
  //                 onPressed: () {
  //                   setState(() {
  //                     humidite = currentSliderValueHum.toInt();
  //                   });
  //                   return;
  //                 },
  //                 child: Container(
  //                   child: Text("Valider"),
  //                 )),
  //           ],
  //         )
  //       ],
  //     ),
  //   );
  // }


  void _showDialog4() {
    slideDialog.showSlideDialog(
      context: context,
      child: Column(
        children: [
          Text("Changez la temperature de la serre"),
        ],
      ),
    );
  }
}

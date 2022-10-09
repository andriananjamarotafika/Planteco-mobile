import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:slide_popup_dialog_null_safety/slide_popup_dialog.dart'
    as slideDialog;
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class AccueilParams extends StatefulWidget {
  const AccueilParams({super.key});

  @override
  State<AccueilParams> createState() => _AccueilParamsState();
}

class _AccueilParamsState extends State<AccueilParams> {
  double currentSliderValueTemp = 15;
  double currentSliderValueHum = 15;
  int humidite = 10;
  int temperature = 10;
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

                    //ARROSSAGE
                    TextButton(
                      onPressed: _showDialog2,
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
                                        fontSize: 40)),
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
                        height: 400 / 4,
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
                                        fontSize: 40)),
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
                      onPressed: _showDialog4,
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
                                        fontSize: 40)),
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
          Text("Changez la temperature de la serre"),
          SleekCircularSlider(
            min: 10,
            max: 60,
            initialValue: temperature.toDouble(),
            onChange: (double value) {
              currentSliderValueHum = value;
              // callback providing a value while its being changed (with a pan gesture)
              print(value);
            },
            onChangeStart: (double startValue) {
              // callback providing a starting value (when a pan gesture starts)
            },
            onChangeEnd: (double endValue) {
              // ucallback providing an ending value (when a pan gesture ends)
            },
          ),
          Row(
            children: [
              ElevatedButton(
                  onPressed: null,
                  child: Container(
                    child: Text("Annuler"),
                  )),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      temperature = currentSliderValueHum.toInt();
                    });
                    return;
                  },
                  child: Container(
                    child: Text("Valider"),
                  )),
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
          Text("Changez l' Humidite de la serre"),
          SleekCircularSlider(
            min: 0,
            max: 100,
            initialValue: humidite.toDouble(),
            onChange: (double value) {
              currentSliderValueHum = value;
              // callback providing a value while its being changed (with a pan gesture)
              print(value);
            },
            onChangeStart: (double startValue) {
              // callback providing a starting value (when a pan gesture starts)
            },
            onChangeEnd: (double endValue) {
              // ucallback providing an ending value (when a pan gesture ends)
            },
          ),
          Row(
            children: [
              ElevatedButton(
                  onPressed: null,
                  child: Container(
                    child: Text("Annuler"),
                  )),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      humidite = currentSliderValueHum.toInt();
                    });
                    return;
                  },
                  child: Container(
                    child: Text("Valider"),
                  )),
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
          Text("Changez la temperature de la serre"),
        ],
      ),
    );
  }

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

import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class AccueilParams extends StatelessWidget {
  const AccueilParams({
    Key? key,
  }) : super(key: key);

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
                    Container(
                      margin: const EdgeInsets.only(bottom: 10, top: 10),
                      height: 400 / 4,
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
                            children: const [
                              Text(
                                "Temperature",
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    color: Colors.red),
                              ),
                              Text("15°C",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat', fontSize: 40)),
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          )
                        ],
                      ),
                    ),

                    //ARROSSAGE
                     Container(
                      margin: const EdgeInsets.only(bottom: 10, top: 10),
                      height: 400 / 4,
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
                              Text("2X",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat', fontSize: 40)),
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          )
                        ],
                      ),
                    ),

                    //HUMIDITE
                     Container(
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
                            children: const [
                              Text(
                                "Humidité",
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    color: Colors.orange),
                              ),
                              Text("45%",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat', fontSize: 40)),
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          )
                        ],
                      ),
                    ),

                    //RECOLTE
                     Container(
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
                                      fontFamily: 'Montserrat', fontSize: 40)),
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          )
                        ],
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
}

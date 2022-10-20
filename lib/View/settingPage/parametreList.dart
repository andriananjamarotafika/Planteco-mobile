import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:slide_popup_dialog_null_safety/slide_popup_dialog.dart'
    as slideDialog;
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

import '../../Services/link_acceuil_chat_bluetooth.dart';

class ParamsList extends StatefulWidget {
  const ParamsList({super.key});

  @override
  State<ParamsList> createState() => _ParamsListState();
}

class _ParamsListState extends State<ParamsList> {
  LinkBluetooth linkBluetooth = new LinkBluetooth();


  bool valSwitchLum = false;
   bool valSwitchEau = false;
    bool valSwitchFen = false;
     bool valSwitchPorte = false;
  void changeLum(bool val) {
    setState(() {
      valSwitchLum = val;
      linkBluetooth.activeLumiere(valSwitchLum);
    });
  }

   void changeEau(bool val) {
    setState(() {
      valSwitchEau = val;
      linkBluetooth.activeEau(valSwitchEau);
    });
  }

   void changePorte(bool val) {
    setState(() {
      valSwitchPorte = val;
      linkBluetooth.activePorte(valSwitchPorte);
    });
  }

   void changeFen(bool val) {
    setState(() {
      valSwitchFen = val;
      linkBluetooth.activeFen(valSwitchFen);
    });
  }


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
                    TextButton(
                      onPressed: null,
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 10, top: 10),
                        padding: const EdgeInsets.only(top: 10),
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
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
                        child: SwitchListTile(
                          onChanged: changeLum,
                          value: valSwitchLum,
                          activeColor: Colors.green,
                          title: Text("Lumière",style: TextStyle(fontFamily: 'Montserrat',fontSize: 25),),
                        ),
                      ),
                    ),

                    TextButton(
                      onPressed: null,
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 10, top: 10),
                        padding: const EdgeInsets.only(top: 10),
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
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
                        child: SwitchListTile(
                          onChanged: changeEau,
                          value: valSwitchEau,
                          activeColor: Colors.green,
                          title: Text("Arrossage",style: TextStyle(fontFamily: 'Montserrat',fontSize: 25),),
                        ),
                      ),
                    ),

                    TextButton(
                      onPressed: null,
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 10, top: 10),
                        padding: const EdgeInsets.only(top: 10),
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
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
                        child: SwitchListTile(
                          onChanged: changePorte,
                          value: valSwitchPorte,
                          activeColor: Colors.green,
                          title: Text("Porte",style: TextStyle(fontFamily: 'Montserrat',fontSize: 25),),
                        ),
                      ),
                    ),

                    TextButton(
                      onPressed: null,
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 10, top: 10),
                        padding: const EdgeInsets.only(top: 10),
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
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
                        child: SwitchListTile(
                          onChanged: changeFen,
                          value: valSwitchFen,
                          activeColor: Colors.green,
                          title: Text("Fenêtre",style: TextStyle(fontFamily: 'Montserrat',fontSize: 25),),
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

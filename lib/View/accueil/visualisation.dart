import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'chartHum.dart';
import 'chartTemp.dart';

class Visualisation extends StatefulWidget {
  const Visualisation({super.key});

  @override
  State<Visualisation> createState() => _VisualisationState();
}

class _VisualisationState extends State<Visualisation> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: AnimationConfiguration.staggeredList(
        delay: const Duration(milliseconds: 100),
        position: 1,
        child: SlideAnimation(
          duration: const Duration(milliseconds: 2500),
          curve: Curves.fastLinearToSlowEaseIn,
          child: FadeInAnimation(
            curve: Curves.fastLinearToSlowEaseIn,
            duration: const Duration(milliseconds: 2500),
            child: Column(
              children: const [
                SizedBox(
                  height: 20,
                ),
                ChartTemp(),
                SizedBox(
                  height: 30,
                ),
                ChartHum()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

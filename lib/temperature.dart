import 'package:flutter/material.dart';
import 'package:planteco/weau.dart';
import 'Models/weau/view_modal.dart';
import 'package:provider/provider.dart';




class DemoTemperatureWidgetScreen extends StatefulWidget {
  const DemoTemperatureWidgetScreen({Key? key}) : super(key: key);

  @override
  DemoTemperatureWidgetScreenState createState() =>
      DemoTemperatureWidgetScreenState();
}

class DemoTemperatureWidgetScreenState
    extends State<DemoTemperatureWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ViewModel>(
      create: (context) => ViewModel(),
      child: Consumer<ViewModel>(
        builder: (context, provider, child) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 400,
                    child: eau(context)
                    ),
                ],
              ),
            ));
        },
      ),
    );
  }
}




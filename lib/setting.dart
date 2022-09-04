import 'package:flutter/material.dart';
import "wtemp.dart";
import "wtime.dart";
import "weau.dart";

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          bottom: const TabBar(
            tabs: [
              Tab(
                  icon: Icon(
                Icons.thermostat,
                size: 40,
                color: Colors.green,
              )),
              Tab(
                  icon: Icon(
                Icons.water,
                size: 40,
                color: Colors.blue,
              )),
              Tab(
                  icon: Icon(
                Icons.timelapse,
                size: 40,
                color: Colors.red,
              )),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            eau(context),
            temp(context),
            time(context),
          ],
        ),
      ),
    );
  }
}

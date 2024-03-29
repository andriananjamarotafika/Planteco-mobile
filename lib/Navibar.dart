// ignore_for_file: library_private_types_in_public_api

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:planteco/Bluetooth/MainPage.dart';
import 'package:planteco/Models/dataCollection.dart';
import 'package:planteco/View/collectPage/collectPage.dart';
import 'package:planteco/View/settingPage/settingPage.dart';
import 'Bluetooth/ChatPage.dart';
import 'View/accueil/homeFirstPage.dart';
import 'View/accueil/plantation.dart';
import 'View/dataCollect.dart';
import 'View/formation/formation.dart';
import 'formationtestok.dart';

class Navibar extends StatefulWidget {
  const Navibar({super.key});

  @override
  _NavibarState createState() => _NavibarState();
}

class _NavibarState extends State<Navibar> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
   
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children:  <Widget>[
            HomeFirstPage(),
            SettingPage(),
            CollectPage(),
            Formation(),
            MainPage()
            
            
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(()=>_currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: const Icon(Icons.home),
            title: const Text('Accueil'),
            activeColor: Colors.green,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.settings),
            title: const Text('Paramètre'),
            activeColor: Colors.blue,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.data_array),
            title: const Text(
              'Collection',
            ),
            activeColor: Colors.red,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.lightbulb),
            title: const Text('Formation'),
            activeColor: Colors.black,
            textAlign: TextAlign.center,
          ),
             BottomNavyBarItem(
            icon: const Icon(Icons.bluetooth),
            title: const Text('Bluetooth'),
            activeColor: Colors.blue,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

}

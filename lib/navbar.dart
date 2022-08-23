import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:hexcolor/hexcolor.dart';
import 'page/home.dart';
import 'page/setting.dart';
import 'page/dataCollect.dart';
import 'page/training.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
    late List<Widget> _pages;
  late Widget _page1;
  late Widget _page2;
  late Widget _page3;
  late Widget _page4;
  late int _currentIndex;
  late Widget _currentPage;
  late int pagenum = 0;
  List <int> tab = [1,2,3,4];
  int page = 0;
  GlobalKey<CurvedNavigationBarState> bottomNavigationKey = GlobalKey();
    
  @override
  void initState() {
    super.initState();
    _page1 = const HomePage();
    _page2 = const settingPage();
    _page3 = const trainingPage();
    _page4 = const dataPage();
    _pages = [_page1, _page2, _page3,_page4];
    _currentIndex = 0;
    _currentPage = _page1;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: bottomNavigationKey,
          index: 0,
          height: 60.0,
          items: const <Widget>[
            Icon(Icons.home, size: 30,color: Colors.white,),
            Icon(Icons.settings, size: 30,color: Colors.white),
            Icon(Icons.compare_arrows, size: 30,color: Colors.white),
            Icon(Icons.lightbulb, size: 30,color: Colors.white),
          ],
          color: HexColor("#85B86B"),
          buttonBackgroundColor:HexColor("#85B86B"),
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 600),
          backgroundColor: HexColor("#F6F6F6"),
          onTap: (index) {
            setState(() {
              page = index;
              pagenum = tab[index];
               _currentPage = _pages[index];
            });
          },
          letIndexChange: (index) => true,
        ),
        body: _currentPage,);
  }
}

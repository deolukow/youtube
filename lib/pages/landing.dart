import 'package:line_icons/line_icons.dart';

import '../pages/home_page.dart';
import '../pages/hal3.dart';
import '../pages/hal2.dart';
import '../pages/hal4.dart';
import '../pages/hal5.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

// import './main.dart';

void main() {
  runApp(LandingPage());
}

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [
    new HomePage(),
    new Hal2(),
    new Hal3(),
    new Hal4(),
    new Hal5(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        // appBar: Appbarcs(),
        body: _container[_bottomNavCurrentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xFF1b1c1e),
          onTap: (index) {
            setState(() {
              _bottomNavCurrentIndex = index;
            });
          },
          currentIndex: _bottomNavCurrentIndex,
          items: [
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.home_filled,
                color: Colors.white,
              ),
              icon: Icon(
                Icons.home_filled,
                color: Colors.grey,
              ),
              title: Text('Beranda',
                  style: TextStyle(
                      color: _bottomNavCurrentIndex == 0
                          ? Colors.white
                          : Colors.grey)),
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.explore_outlined,
                color: Colors.white,
              ),
              icon: Icon(
                Icons.explore_outlined,
                color: Colors.grey,
              ),
              title: Text('Explore',
                  style: TextStyle(
                      color: _bottomNavCurrentIndex == 1
                          ? Colors.white
                          : Colors.grey)),
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                LineIcons.youtube_play,
                color: Colors.white,
              ),
              icon: Icon(
                LineIcons.youtube_play,
                color: Colors.grey,
              ),
              title: Text('Upload',
                  style: TextStyle(
                      color: _bottomNavCurrentIndex == 2
                          ? Colors.white
                          : Colors.grey)),
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.public,
                color: Colors.white,
              ),
              icon: new Icon(
                Icons.public,
                color: Colors.grey,
              ),
              title: new Text('Subscription',
                  style: TextStyle(
                      color: _bottomNavCurrentIndex == 3
                          ? Colors.white
                          : Colors.grey)),
            ),
            BottomNavigationBarItem(
              activeIcon: new Icon(
                Icons.video_collection_outlined,
                color: Colors.white,
              ),
              icon: new Icon(
                Icons.video_collection_outlined,
                color: Colors.grey,
              ),
              title: new Text('Koleksi',
                  style: TextStyle(
                      color: _bottomNavCurrentIndex == 4
                          ? Colors.white
                          : Colors.grey)),
            ),
          ],
        ));
  }
}

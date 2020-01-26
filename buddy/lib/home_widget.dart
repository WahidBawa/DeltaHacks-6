import 'package:flutter/material.dart';
import 'placeholder_widget.dart';
import 'buddy_widget.dart';
import 'stats_widget.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return _HomeState();
  }
}

class _HomeState extends State<Home> {

  int _currentIndex = 0;
  final List<Widget> _children = [
    StatsWidget(),
    BuddyWidget(),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buddy'),
        backgroundColor: Color(0xFFFF1744),
      ),
      body: _children[_currentIndex], // new
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, // new
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Buddy'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.graphic_eq),
            title: new Text('Stats'),
          )
        ],
        selectedItemColor: Colors.red,
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

}

import 'package:clazzy/presentation/screen/myinfo/view.dart';
import 'package:clazzy/presentation/screen/notification/view.dart';
import 'package:clazzy/presentation/screen/search/view.dart';
import 'package:clazzy/presentation/screen/timeline/view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final double _iconSize = 24.0;
  final Color _activeColor = Colors.red;
  final Color _normalColor = Colors.black;

  final List<Widget> _children = [
    TimelineScreen(),
    SearchScreen(),
    NotificationScreen(),
    MyInfoScreen(),
  ];

  var _selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            title: Text('Home'),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text('Search'),
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            title: Text('Notification'),
            icon: Icon(Icons.notifications),
          ),
          BottomNavigationBarItem(
            title: Text('My Info'),
            icon: Icon(Icons.person),
          )
        ],
        iconSize: _iconSize,
        selectedItemColor: _activeColor,
        unselectedItemColor: _normalColor,
        onTap: _onTapped,
        currentIndex: _selectedTabIndex,
      ),
      body: _children[_selectedTabIndex],
    );
  }

  void _onTapped(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }
}

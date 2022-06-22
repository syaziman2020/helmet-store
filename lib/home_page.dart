import 'package:flutter/material.dart';
import 'package:helm_store/home_screen.dart';
import 'package:helm_store/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  List<Widget> widgetOpsi = [
    HomeScreen(),
    Text('2'),
    Text('3'),
    Text('4'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgC,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        iconSize: 24,
        selectedItemColor: blackC,
        unselectedItemColor: blackC.withOpacity(0.38),
        showUnselectedLabels: true,
        currentIndex: _index,
        type: BottomNavigationBarType.fixed,
        onTap: (int selectedIndex) {
          setState(() {
            _index = selectedIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
              ),
              label: 'Favorite'),
          BottomNavigationBarItem(
            icon: Icon(Icons.mode_comment),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      body: Center(
        child: widgetOpsi.elementAt(_index),
      ),
    );
  }
}

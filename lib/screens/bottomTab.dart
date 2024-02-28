import 'package:flutter/material.dart';
import 'package:vgts_assessment/main.dart';
import 'package:vgts_assessment/screens/homePage.dart';

class BottomTab extends StatefulWidget {
  const BottomTab({super.key});

  @override
  State<BottomTab> createState() => _BottomTabState();
}

class _BottomTabState extends State<BottomTab> {

  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    MyHomePage(),
    Center(child: Text('Portfolio', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))),
    Center(child: Text('', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))),
    Center(child: Text('Prices', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))),
    Center(child: Text('Settings', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          items:  <BottomNavigationBarItem>[
            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.pie_chart),
              label:'Portfolio',
            ),
            BottomNavigationBarItem(
              icon: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 7),
                  margin: const EdgeInsets.only(top: 15),
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.menu,color: Colors.white,)),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.price_change_outlined),
              label: 'Prices',
              // backgroundColor: Colors.blue,
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          iconSize: 30,
          onTap: _onItemTapped,
          elevation: 6
      ),
    );
  }
}
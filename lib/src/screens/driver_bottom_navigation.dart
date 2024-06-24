// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import '../data/colors.dart';
import 'DriverProfilePage/profile_page.dart';
import 'data/fonts.dart';
import 'driver_home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const DriverHomePage(),
    const DriverProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grayscale00,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.delivery_dining_outlined),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            activeIcon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.primary20,
        unselectedItemColor: AppColors.grayscale50,
        selectedLabelStyle: AppFonts.caption3(color: AppColors.primary20),
        unselectedLabelStyle: AppFonts.caption3(color: AppColors.grayscale50),
        onTap: _onItemTapped,
        backgroundColor: AppColors.grayscale00,
      ),
    );
  }
}

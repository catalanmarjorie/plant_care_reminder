import 'package:flutter/material.dart';
import 'screens/care_today_screen.dart';
import 'screens/my_plants_screen.dart';
import 'screens/add_plant_screen.dart';

void main() {
  runApp(PlantCareApp());
}

class PlantCareApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant Care Reminder',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Color(0xFFF5F7F0),
      ),
      home: MainNavigation(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainNavigation extends StatefulWidget {
  @override
  _MainNavigationState createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;
  final screens = [
    CareTodayScreen(),
    MyPlantsScreen(),
    AddPlantScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        selectedItemColor: Colors.green,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.today), label: 'Care Today'),
          BottomNavigationBarItem(icon: Icon(Icons.local_florist), label: 'My Plants'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add Plant'),
        ],
      ),
    );
  }
}

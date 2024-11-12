import 'package:flutter/material.dart';

import 'arabic_screen.dart';
import 'deeds_screen.dart';
import 'home_screen.dart';
import 'qibla_screen.dart';
import 'quran_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final List<Widget> _screens = [
    const DeedScreen(),
    const HomeScreen(),
    const QuranScreen(),
    const QiblaScreen(),
    const ArabicScreen(),
  ];

  int _currentIndex = 1;

  void _changeNavIndex(int i) {
    setState(() {
      _currentIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _changeNavIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.flaky),
            label: 'Deeds',
          ),
          BottomNavigationBarItem(
            icon: RotatedBox(
              quarterTurns: 3,
              child: Icon(Icons.space_dashboard),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_rounded),
            label: 'Quran',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Qibla',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Arabic',
          ),
        ],
      ),
    );
  }
}

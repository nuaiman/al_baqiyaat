import 'package:al_baqiyaat/features/dashboard/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: AlBaqiyaatApp()));
}

class AlBaqiyaatApp extends StatelessWidget {
  const AlBaqiyaatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Al Baqiyaat',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          // brightness: Brightness.dark,
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
        // scaffoldBackgroundColor: Colors.black,
        // ignore: prefer_const_constructors
        // appBarTheme: AppBarTheme(
        //   color: Colors.black,
        //   surfaceTintColor: Colors.black87,
        // ),
        // bottomNavigationBarTheme: BottomNavigationBarThemeData(
        //   elevation: 0,
        //   backgroundColor: Colors.black,
        //   selectedItemColor: Colors.white,
        //   unselectedItemColor: Colors.grey,
        // ),
      ),
      home: const DashboardScreen(),
    );
  }
}

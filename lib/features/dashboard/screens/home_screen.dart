import 'package:flutter/material.dart';

import '../widgets/home_advice_tile.dart';
import '../widgets/home_deeds_widget.dart';
import '../widgets/home_prayer_reminder_tile.dart';
import '../widgets/home_top_multi_calendar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: const Column(
        children: [
          HomeAdviceTile(expansionFlex: 0),
          HomeTopMultiCalendar(expansionFlex: 1),
          HomeDeedsWidget(expansionFlex: 3),
          HomePrayerReminderTile(expansionFlex: 4),
        ],
      ),
    );
  }
}

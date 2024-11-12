import 'package:flutter/material.dart';

class HomeTopMultiCalendar extends StatelessWidget {
  final int expansionFlex;
  const HomeTopMultiCalendar({
    super.key,
    required this.expansionFlex,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: expansionFlex,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Container(
          color: Colors.red,
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildCalendarCard(
                  date: '29',
                  month: 'January',
                  year: '1/2024',
                ),
                _buildCalendarCard(
                  date: '15',
                  month: 'February',
                  year: '2/2024',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildCalendarCard({
  required String date,
  required String month,
  required String year,
}) {
  return Expanded(
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      elevation: 0,
      color: Colors.white,
      child: ListTile(
        dense: true,
        leading: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.blueAccent.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            date,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
            ),
          ),
        ),
        title: FittedBox(
          child: Text(
            month,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black54,
            ),
          ),
        ),
        subtitle: FittedBox(
          child: Text(
            year,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black54,
            ),
          ),
        ),
      ),
    ),
  );
}

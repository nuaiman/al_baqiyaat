import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constants/svgs.dart';

class HomePrayerReminderTile extends StatelessWidget {
  final int expansionFlex;
  const HomePrayerReminderTile({
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
          color: Colors.yellow,
          child: Column(
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text('Next Prayer'),
                subtitle: const Text('Fazr in 2h:45m'),
                trailing: CircleAvatar(
                  child: SvgPicture.asset(
                    Svgs.faceSmile,
                    height: 35,
                  ),
                ),
              ),
              ListTile(
                title: Text('Fazr'),
                trailing: Text('4:45 AM'),
                shape: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.white),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

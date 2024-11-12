import 'package:al_baqiyaat/core/constants/svgs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeDeedsWidget extends StatelessWidget {
  final int expansionFlex;

  const HomeDeedsWidget({
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
          color: Colors.green,
          child: Column(
            children: [
              // Top MeterBar Row
              Expanded(
                flex: 7,
                child: Container(
                  color: Colors.lightGreen,
                  child: const IntrinsicHeight(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MeterBar(),
                          MeterBar(),
                          MeterBar(),
                          MeterBar(),
                          MeterBar(),
                          MeterBar(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              // Bottom Single MeterBar
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.lightGreenAccent,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: MeterBar(isToday: true),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MeterBar extends StatelessWidget {
  final bool isToday;

  const MeterBar({
    super.key,
    this.isToday = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(50),
      ),
      padding: const EdgeInsets.all(4.0),
      child: isToday ? _buildHorizontalBar() : _buildVerticalBar(),
    );
  }

  // Builds the vertical MeterBar layout
  Widget _buildVerticalBar() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildDateCircle(),
        _buildIconCircle(),
      ],
    );
  }

  // Builds the horizontal MeterBar layout for the "isToday" case
  Widget _buildHorizontalBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildDateCircle(),
        _buildIconCircle(),
      ],
    );
  }

  // Builds the date display as a CircleAvatar
  Widget _buildDateCircle() {
    return const CircleAvatar(
      child: Padding(
        padding: EdgeInsets.all(3.0),
        child: FittedBox(
          child: Column(
            children: [
              Text('31'),
              Text('Mon'),
            ],
          ),
        ),
      ),
    );
  }

  // Builds the icon display as a CircleAvatar
  Widget _buildIconCircle() {
    return CircleAvatar(
      child: SvgPicture.asset(
        Svgs.faceSmile,
        height: 35,
      ),
    );
  }
}

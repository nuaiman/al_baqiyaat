import 'package:flutter/material.dart';

class HomeAdviceTile extends StatelessWidget {
  final int expansionFlex;
  const HomeAdviceTile({
    super.key,
    required this.expansionFlex,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: expansionFlex,
      child: Container(
        color: Colors.purple,
      ),
    );
  }
}

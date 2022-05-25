import 'package:flutter/material.dart';

import '../../../constant.dart';
class ColorDot extends StatelessWidget {
  final Color color;
  final VoidCallback press;
  final bool isActive;

  const ColorDot({
    Key? key,
    required this.color,
    required this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.all(defaultPadding / 4),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isActive ? primaryColor : Colors.transparent,
          ),
        ),
        child: CircleAvatar(
          radius: 10,
          backgroundColor: color,
        ),
      ),
    );
  }
}
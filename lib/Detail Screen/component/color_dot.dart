import 'package:flutter/material.dart';
import 'package:test_shop/constant.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({ Key? key, required this.color, required this.isActive }) : super(key: key);
  final Color color;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding/4),
      decoration: BoxDecoration(
        border: Border.all(color: isActive ? Colors.black : Colors.transparent),
        shape:  BoxShape.circle,
      ),
      child: CircleAvatar(
        radius: 13,
        backgroundColor: color,
      ),
    );
  }
}
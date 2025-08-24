import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});

  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9),
      child:
          isActive
              ? CircleAvatar(
                radius: 40,
                backgroundColor: Colors.white,
                child: CircleAvatar(radius: 36, backgroundColor: color),
              )
              :  CircleAvatar(radius: 30, backgroundColor: color),
    );
  }
}

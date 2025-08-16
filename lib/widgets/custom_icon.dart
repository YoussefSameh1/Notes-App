import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomIcon extends StatelessWidget {
   CustomIcon({super.key, required this.icon});

  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(icon, color: Colors.white, size: 30),
      ),
    );
  }
}

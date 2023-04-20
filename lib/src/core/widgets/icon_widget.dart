import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({super.key, required this.icon, required this.onTap});

  final IconData icon;
  final VoidCallback onTap;

  final Size _iconSize = const Size(50, 50);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _iconSize.width,
      height: _iconSize.height,
      child: GestureDetector(
        onTap: onTap,
          child: Icon(
        icon,
        size: 28,
        color: Colors.grey,
      )),
      decoration: BoxDecoration(
          color: Colors.black26, borderRadius: BorderRadius.circular(16)),
    );
  }
}

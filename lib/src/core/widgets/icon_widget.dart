import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({super.key, required this.widget, required this.onTap});

  final Widget widget;
  final VoidCallback onTap;

  final Size _iconSize = const Size(50, 50);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _iconSize.width,
      height: _iconSize.height,
      child: GestureDetector(
        onTap: onTap,
        child: widget,),
      decoration: BoxDecoration(
          color: Colors.black26, borderRadius: BorderRadius.circular(16)),
    );
  }
}

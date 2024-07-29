import 'package:flutter/material.dart';

class CircularIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const CircularIconButton(
      {super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 50.0,
        height: 50.0,
        decoration: BoxDecoration(
          color: Colors.yellow,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

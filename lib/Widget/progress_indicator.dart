import 'package:flutter/material.dart';

class ProgressIndicatorWidget extends StatelessWidget {
  final int currentIndex;

  const ProgressIndicatorWidget({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(4, (index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 4.0),
          width: 10.0,
          height: 10.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: currentIndex == index ? Colors.yellow : Colors.grey,
          ),
        );
      }),
    );
  }
}

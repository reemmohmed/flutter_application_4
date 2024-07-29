import 'package:flutter/material.dart';

class ProgressTrackingPage extends StatelessWidget {
  const ProgressTrackingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/4.png'),
          SizedBox(height: 20),
          Text(
            'Progress Tracking',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Check your progress of every course',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

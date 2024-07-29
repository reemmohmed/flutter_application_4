import 'package:flutter/material.dart';

class OfflineAccessPage extends StatelessWidget {
  const OfflineAccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/3.png'), // تأكد من إضافة صورة في مجلد assets
          SizedBox(height: 20),
          Text(
            'Offline Access',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Make your course available offline',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

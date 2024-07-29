import 'package:flutter/material.dart';

class CertificationBadgesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
              'assets/certification.png'), // تأكد من إضافة صورة في مجلد assets
          SizedBox(height: 20),
          Text(
            'Certification and Badges',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Earn a certificate after completion of every course',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

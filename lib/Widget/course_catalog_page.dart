import 'package:flutter/material.dart';

class CourseCatalogPage extends StatelessWidget {
  const CourseCatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/2.png'), // تأكد من إضافة صورة في مجلد assets
          SizedBox(height: 20),
          Text(
            'Course Catalog',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'View in which courses you are enrolled',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

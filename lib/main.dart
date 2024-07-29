import 'package:flutter/material.dart';
import 'package:flutter_application_4/Widget/certification_badges_page.dart';
import 'package:flutter_application_4/Widget/course_catalog_page.dart';
import 'package:flutter_application_4/Widget/offline_access_page.dart';
import 'package:flutter_application_4/Widget/progress_indicator.dart';
import 'package:flutter_application_4/Widget/progress_tracking_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Onboarding App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OnboardingScreen(),
    );
  }
}

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: _onPageChanged,
            children: [
              CertificationBadgesPage(),
              ProgressTrackingPage(),
              OfflineAccessPage(),
              CourseCatalogPage(),
            ],
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Column(
              children: [
                ProgressIndicatorWidget(currentIndex: _currentIndex),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.yellow,
                        size: 24,
                      ),
                      onPressed: _currentIndex == 0
                          ? null
                          : () {
                              _pageController.previousPage(
                                duration: Duration(milliseconds: 300),
                                curve: Curves.easeIn,
                              );
                            },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.arrow_forward,
                        color: Colors.yellow,
                        size: 24,
                      ),
                      onPressed: _currentIndex == 3
                          ? null
                          : () {
                              _pageController.nextPage(
                                duration: Duration(milliseconds: 300),
                                curve: Curves.easeIn,
                              );
                            },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

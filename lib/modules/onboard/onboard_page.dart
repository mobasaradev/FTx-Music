import 'package:flutter/material.dart';
import 'package:ftx_music/route/route_name.dart';
import 'package:ftx_music/utils/utils.dart';

import 'widgets/section.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({super.key});

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<String> images = [
    ImageManager.onboard,
    ImageManager.onboardSec,
  ];
  List<String> titles = [
    'Welcome to the world \nof music',
    'Download and save your \n Favorite Music',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.headerText.withOpacity(0.165),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: titles.length,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                itemBuilder: (context, index) {
                  return Section(
                    image: images[index],
                    title: titles[index],
                    onTap: () {
                      if (_currentPage == images.length - 1) {
                        Navigator.pushReplacementNamed(
                            context, RouteName.authMethod);
                      } else {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                    buttonTitle:
                        _currentPage == images.length - 1 ? 'Start' : 'Next',
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


              // _currentPage == images.length - 1 ? 'Start' : 'Next'
import 'package:flutter/material.dart';
import 'package:artmoney/pages/start/welcome_page.dart';
import 'package:artmoney/pages/start/registration_page.dart';
import 'package:artmoney/pages/start/source_poll_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(children: [
        PageView(
          controller: pageController,
          children: [
            WelcomePage(
              pageController: pageController,
            ),
            RegistrationPage(
              pageController: pageController,
            ),
            SourcePollPage(pageController: pageController),
          ],
        ),
        Container(
            alignment: const Alignment(0, 0.8),
            child: SmoothPageIndicator(controller: pageController, count: 3)),
      ]),
    );
  }
}

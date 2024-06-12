import 'package:flutter/material.dart';
import 'package:artmoney/components/styled_button.dart';

class StartScreenNav extends StatelessWidget {
  final PageController pageController;
  const StartScreenNav({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        StyledButton(
            text: 'Назад',
            onTap: () {
              pageController.previousPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn);
            },
            fill: false),
        StyledButton(
            text: 'Далее',
            onTap: () {
              pageController.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn);
            },
            fill: true)
      ],
    );
    //
  }
}

import 'package:flutter/material.dart';
import 'package:artmoney/components/styled_button.dart';

const img_url =
    'https://s3-alpha-sig.figma.com/img/0f44/7050/bdf61b5434671c7d1534628d2e9c7b4a?Expires=1717977600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=NtJwFBhyiO5SYVR4qDE9Q1iyl2-DolOdsH7zS94QtdCVOz3Hzbr2XiFfYmpPUeM4apr-XAB~FdwqIjkoqgZAAEQFLtfs7WEJJVPp6ft1BPk8cV7k5A67n8uIOkFE8VYfz3hMO1sO8QDpCFKdOaOlE7YOPU6xdqQJTNxnjhQGFexRnXJRl1qPlrAcJOrgKzFJA0uZj8E-PqI6B5B2~ZajKLZE4SGBgM9RTzbYk-1SV58mZnr-FnXBuRRbCRh78Dn8DqG3EurkTzDf3eZt93bP8zjeUrTWwaz9i6lxHsEc3rHYhb9moZVGGYf8iO~RXflI~pyNbC0YXxsmuFbmBwbYrQ__';

class WelcomePage extends StatefulWidget {
  final PageController pageController;
  const WelcomePage({super.key, required this.pageController});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // logo
                const Image(
                  image: AssetImage('assets/logo.png'),
                  width: 200,
                  height: 200,
                ),

                const SizedBox(height: 40),

                const Text(
                    style: TextStyle(fontSize: 15),
                    "Вас приветствует команда ArtMoney, мы благодарим вас за ваш экономически правильный выбор."),

                const SizedBox(
                  height: 20,
                ),

                const Text(
                    style: TextStyle(fontSize: 15),
                    "Наша основная задача — сделать мир финансово лучше через обучение вас экономическим принципам и финансовой грамотности."),

                const SizedBox(
                  height: 40,
                ),
                StyledButton(
                    text: 'Далее',
                    onTap: () {
                      widget.pageController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                    fill: true)
                // next button
              ],
            ),
          ),
        ),
      ),
    );
  }
}

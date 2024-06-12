import 'package:flutter/material.dart';
import 'package:artmoney/components/start_pages/start_screen_nav.dart';
import 'package:artmoney/components/start_pages/text_field.dart';
import 'package:artmoney/components/start_pages/poll_checkbox.dart';

class SourcePollPage extends StatefulWidget {
  final PageController pageController;
  const SourcePollPage({super.key, required this.pageController});

  @override
  State<SourcePollPage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<SourcePollPage> {
  final anotherVariantController = TextEditingController();
  int checkedNumber = -1;

  void refreshChecked(int newNumber) {
    setState(() {
      checkedNumber = newNumber;
    });
  }

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
                const Text("Откуда вы узнали о нас",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 22)),
                const SizedBox(height: 50),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PollCheckbox(
                        text: "Посоветовал друг",
                        num: 1,
                        check: (checkedNumber == 1 ? true : false),
                        callback: refreshChecked),
                    const SizedBox(height: 15),
                    PollCheckbox(
                        text: "Был на форуме",
                        num: 2,
                        check: (checkedNumber == 2 ? true : false),
                        callback: refreshChecked),
                    const SizedBox(height: 15),
                    PollCheckbox(
                        text: "Увидел в соцсетях",
                        num: 3,
                        check: (checkedNumber == 3 ? true : false),
                        callback: refreshChecked),
                  ],
                ),
                const SizedBox(height: 30),
                CustomTextField(
                    controller: anotherVariantController,
                    textHint: "Свой вариант"),
                const SizedBox(
                  height: 50,
                ),
                StartScreenNav(pageController: widget.pageController)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

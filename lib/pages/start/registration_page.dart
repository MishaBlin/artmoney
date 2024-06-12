import 'package:artmoney/components/start_pages/start_screen_nav.dart';
import 'package:flutter/material.dart';
import 'package:artmoney/components/start_pages/text_field.dart';

class RegistrationPage extends StatefulWidget {
  final PageController pageController;
  const RegistrationPage({super.key, required this.pageController});

  @override
  State<RegistrationPage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<RegistrationPage> {
  final nameTextController = TextEditingController();
  final surnameTextController = TextEditingController();
  final phoneTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Регистрация вас в экономику",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 22)),
                const SizedBox(height: 50),
                CustomTextField(
                    controller: nameTextController, textHint: "Имя"),
                const SizedBox(height: 20),
                CustomTextField(
                    controller: surnameTextController, textHint: "Фамилия"),
                const SizedBox(height: 20),
                CustomTextField(
                    controller: phoneTextController,
                    textHint: "Номер телефона"),
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

import 'package:flutter/material.dart';
import 'package:artmoney/settings.dart';

class StyledButton extends StatelessWidget {
  final String text;
  final bool fill;
  final Function()? onTap;

  const StyledButton(
      {super.key, required this.text, required this.onTap, required this.fill});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          backgroundColor: (fill ? Purple : Colors.white),
          side: const BorderSide(color: Purple)),
      child: SizedBox(
          width: 60,
          height: 22,
          child: Center(
              child: Text(
            text,
            style: TextStyle(
                color: (fill ? Colors.white : const Color(0xff7880ff)),
                fontSize: 15),
          ))),
    );
  }
}

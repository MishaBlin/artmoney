import 'package:flutter/material.dart';

class PollCheckbox extends StatefulWidget {
  final String text;
  final bool check;
  final int num;
  final void Function(int) callback;

  const PollCheckbox(
      {super.key,
      required this.text,
      required this.check,
      required this.num,
      required this.callback});

  @override
  State<PollCheckbox> createState() => _PollCheckboxState();
}

class _PollCheckboxState extends State<PollCheckbox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.callback(widget.num);
      },
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                color: (widget.check ? const Color(0xff7880ff) : Colors.white),
                borderRadius: BorderRadius.circular(15)),
            width: 40,
            height: 40,
          ),
          const SizedBox(
            width: 30,
          ),
          Text(
            widget.text,
            style: const TextStyle(color: Colors.black, fontSize: 16),
          )
        ],
      ),
    );
  }
}

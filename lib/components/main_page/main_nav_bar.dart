import 'package:artmoney/settings.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  final String selected_page;

  const NavBar({super.key, required this.selected_page});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50), topRight: Radius.circular(50)),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(color: Colors.white),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.house_outlined,
              color: Purple,
              size: 30,
            ),
            Icon(
              Icons.monitor,
              color: Purple,
              size: 30,
            ),
            Icon(
              Icons.book,
              color: Purple,
              size: 30,
            ),
            Icon(
              Icons.file_copy,
              size: 30,
            )
          ],
        ),
      ),
    );
  }
}

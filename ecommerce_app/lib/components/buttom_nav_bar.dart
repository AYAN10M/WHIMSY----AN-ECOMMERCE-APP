import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyButtomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyButtomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return GNav(
        mainAxisAlignment: MainAxisAlignment.center,
        padding: const EdgeInsets.all(20),
        tabBackgroundColor: Colors.green,
        tabBorderRadius: 15,
        onTabChange: (value) => onTabChange!(value),
        tabs: const [
          GButton(
            icon: Icons.home,
            iconColor: Colors.green,
            iconActiveColor: Colors.black,
            text: 'Home',
          ),
          GButton(
            icon: Icons.shopping_bag,
            iconColor: Colors.green,
            iconActiveColor: Colors.black,
            text: 'Cart',
          ),
        ]);
  }
}

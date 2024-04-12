import 'package:ecommerce_app/components/buttom_nav_bar.dart';
import 'package:ecommerce_app/pages/cart_page.dart';
import 'package:ecommerce_app/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // index value for controlling the buttom navigation bar
  int _selectedIndex = 0;

  // this method will update our selected index when the user taps on the buttom bar
  void navigateButtomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // pages to display
  final List<Widget> _pages = [
    // shop page
    const ShopPage(),
    // cart page
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: Colors.green),
        ),
        drawer: Drawer(
          backgroundColor: Colors.grey.shade900,
          child: const Column(
            //logo
            // children: [
            //   DrawerHeader(child: )
            // ],
          ),
        ),
        backgroundColor: Colors.black,
        bottomNavigationBar: MyButtomNavBar(
          onTabChange: (index) => navigateButtomBar(index),
        ),
        body: _pages[_selectedIndex],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:login/Components/bottom_nav_bar.dart';
import 'package:login/pages/cart_page.dart';
import 'package:login/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // This selected index is to control the bottom nav bar
  int _selectedIndex = 0;

  // This method will update our selected Index
  // when the user taps on the bottom bar
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Pages to display
  final List<Widget> _pages = [
    const ShopPage(), // Shop page
    const CartPage(),  // Cart page
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon:const Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
        children: [
            // Logo
            DrawerHeader(
              child: Image.asset(
                "images/bg.jpg",
                color: Colors.white,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Divider(color: Colors.grey),
            ),
            // Other pages
            ListTile(
              leading: const Icon(Icons.home, color: Colors.white),
              title: const Text(
                "HOME",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Handle home tap
                Navigator.pop(context); // Close drawer
                navigateBottomBar(0); // Navigate to ShopPage
              },
            ),
            ListTile(
              leading: const Icon(Icons.info, color: Colors.white),
              title: const Text(
                "ABOUT",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Handle cart tap
                Navigator.pop(context); // Close drawer
                navigateBottomBar(1); // Navigate to CartPage
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.white),
              title: const Text(
                "LOGOUT",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Handle cart tap
                Navigator.pop(context); // Close drawer
                navigateBottomBar(1); // Navigate to CartPage
              },
            ),
        ],
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}

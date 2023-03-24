import 'package:cobak/pages/AddReview.dart';
import 'package:cobak/pages/LoginPage.dart';
import 'package:cobak/pages/ProfilePage.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:cobak/pages/SearchPage.dart';

class NavBar extends StatefulWidget {
  int currentIndex = 1;
  List pages = [LoginPage(), SearchPage(), ProfilePage()];

  NavBar({super.key});

  @override
  State<NavBar> createState() => _NavbarState();
}

class _NavbarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: widget.pages[widget.currentIndex],
        bottomNavigationBar: GNav(
            backgroundColor: Colors.black,
            gap: 8,
            haptic: true,
            color: Colors.white,
            activeColor: Colors.black,
            tabBackgroundColor: Colors.white,
            padding: EdgeInsets.all(16),
            onTabChange: (index) {
              setState(() {
                widget.currentIndex = index;
              });
            },
            selectedIndex: 1,
            tabs: const [
              GButton(
                icon: Icons.add,
                text: 'Review',
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
              ),
              GButton(
                icon: Icons.people,
                text: 'Profile',
              )
            ]));
  }
}

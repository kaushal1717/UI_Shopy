/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui2_app/pages/CartPage.dart';
import 'package:ui2_app/pages/home_page.dart';
import 'CategoriesWidget.dart';
import 'HomeAppBar.dart';
import 'ItemsWidget.dart';
import 'package:ui2_app/pages/itemPage.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currIndex = 0;

  final List<Widget> _screens = [
    HomePage(),
    CartPage(),
    ItemPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: _screens,
        onPageChanged: (index) {
          setState(() {
            _currIndex = index;
          });
        },
      ),
      bottomNavigationBar: CurvedNavigationBar(
        animationCurve: Curves.decelerate,
        onTap: (index) {
          setState(() {
            _currIndex = index;
          });
        },
        height: 60,
        backgroundColor: Colors.transparent,
        color: Color(0xFF4c53A5),
        items: [
          Icon(
            CupertinoIcons.cart_fill,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.format_list_bulleted_rounded,
            size: 30,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
*/
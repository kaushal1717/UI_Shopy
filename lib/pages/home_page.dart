import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui2_app/widgets/HomeAppBar.dart';
import 'package:ui2_app/widgets/CategoriesWidget.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import '../widgets/BottomNavBar.dart';
import '../widgets/ItemsWidget.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          Container(
            // temporary height
            // height: 500,
            padding: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            child: Column(
              children: [
                // Search Widget
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        height: 30,
                        width: 300,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search Here...",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Categories
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4c53A5),
                    ),
                  ),
                ),

                // Categories
                CategoriesWidget(),

                // Items
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Text(
                    "Best Selling",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4c53A5),
                    ),
                  ),
                ),

                // Items Widget
                ItemsWidget(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        animationCurve: Curves.decelerate,
        onTap: (index) {},
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

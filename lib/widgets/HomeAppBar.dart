import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:ui2_app/const/color.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
      child: Row(
        children: [
          Icon(
            Icons.sort_rounded,
            size: 30,
            color: Color(0xFF4c53A5),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "UI Shopy",
              style: TextStyle(
                color: Color(0xFF4c53A5),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: badges.Badge(
              badgeContent: Text(
                '5',
                style: TextStyle(color: Colors.white),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "cartPage");
                },
                child: Icon(
                  Icons.shopping_bag_outlined,
                  size: 30,
                  color: Color(0xFF4c53A5),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

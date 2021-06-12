import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/models/navigation_model.dart';
import 'package:spotify_clone/ui/theme.dart';

class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: playerBgColor,
      width: 80,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset("assets/svg/spotify_logo.svg",
                height: 60, width: 60),
            SizedBox(
              height: 10,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: navigationItems.length,
              itemExtent: 60,
              itemBuilder: (ctx, index) =>
                  InkWell(
                    customBorder: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    hoverColor: Colors.white.withOpacity(0.2),
                    child: navigationItem(index),
                  ),
            ),
          ],
        ),
      ),
    );
  }

  Widget navigationItem(int index) {
    return Icon(
      navigationItems[index].icon,
      color: getColor(index),
    );
  }

  Color getColor(int index) {
    if (selectedIndex == index) return navItemSelectedColor;
    return navItemUnselectedColor;
  }
}

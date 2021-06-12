import 'package:flutter/material.dart';
import 'package:spotify_clone/ui/tabs/home_tab.dart';
import 'package:spotify_clone/ui/theme.dart';
import 'package:spotify_clone/ui/widgets/navigation_drawer.dart';
import 'package:spotify_clone/ui/widgets/player.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.of(context).size);
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
                child: Row(
                  children: [
                    NavigationDrawer(),
                    Expanded(
                        child: IndexedStack(
                          children: [HomeTab()],
                        ))
              ],
            )),
            Material(
              color: tertiaryBgColor,
              child: Player(),
            ),
          ],
        ),
      ),
    );
  }
}

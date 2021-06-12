import 'package:flutter/material.dart';

class NavigationModel{
  String title;
  IconData icon;

  NavigationModel({this.title, this.icon});
}

List<NavigationModel> navigationItems = [
  NavigationModel(title: "Home",icon: Icons.home_filled),
  NavigationModel(title: "Explore",icon: Icons.explore_rounded),
  NavigationModel(title: "Recently Played",icon: Icons.watch_later_rounded),
  NavigationModel(title: "Your Library",icon: Icons.my_library_music_rounded),
];
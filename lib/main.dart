import 'package:flutter/material.dart';
import 'package:spotify_clone/ui/screens/home_page.dart';
import 'package:spotify_clone/ui/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        hoverColor: Colors.white.withOpacity(0.2),
        canvasColor: Colors.black,
        cardColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
        tooltipTheme: TooltipThemeData(
          decoration: BoxDecoration(
            color: Colors.transparent,
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}

import 'package:flutter/material.dart';

class TitledSection extends StatelessWidget {
  final String title;
  final Widget child;

  TitledSection({this.title, this.child});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
      style: TextStyle(
          color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),),
        child
      ],
    );
  }
}

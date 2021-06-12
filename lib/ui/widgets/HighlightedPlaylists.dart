
import 'package:flutter/material.dart';

import '../theme.dart';

class HighlightedPlaylists extends StatelessWidget {
  final List<Color> colors = [
    Color(0xff7B6BFF),
    Color(0xff1F48FF),
    Color(0xffFF9700),
    Color(0xffFF5B17),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 20),
          separatorBuilder: (ctx, index) => SizedBox(
                width: 15,
              ),
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) => SizedBox(
                height: 360,
                width: 300,
                child: Card(
                  color: colors[index],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Image.asset(
                          "assets/png/photo${index + 1}.png",
                          height: 360,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(40),
                                  bottomRight: Radius.circular(40)),
                              gradient: LinearGradient(
                                colors: [
                                  colors[index],
                                  colors[index].withOpacity(0.01)
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              )),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 30.0, horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "28 Tracks",
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.8)),
                            ),
                            Spacer(),
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              minVerticalPadding: 0,
                              leading: CircleAvatar(
                                radius: 25,
                                backgroundColor: accentColor,
                                child: Icon(
                                  Icons.play_arrow_rounded,
                                  color: Colors.white,
                                ),
                              ),
                              title: Text(
                                "Release Radar",
                                style: TextStyle(color: Colors.white),
                              ),
                              subtitle: Text(
                                "Updates Every friday",
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.7)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )),
    );
  }
}
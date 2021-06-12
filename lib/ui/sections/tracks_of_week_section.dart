import 'dart:math';

import 'package:flutter/material.dart';
import 'package:spotify_clone/ui/theme.dart';
import 'package:spotify_clone/ui/widgets/player.dart';
import 'package:spotify_clone/ui/widgets/titled_section.dart';

class TrackOfTheWeekSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TitledSection(
      title: "Track Of The Week",
      child: Container(
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            color: listBgColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: borderColor, width: 1)),
        child: SizedBox(
          width: 500,
          child: ListView.separated(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              separatorBuilder: (ctx, index) => Divider(),
              shrinkWrap: true,
              itemCount: 10,
              physics: ClampingScrollPhysics(),
              itemBuilder: (ctx, index) => Container(
                    height: 50,
                    width: 500,
                    child: TrackTile(index: index,),
                  )),
        ),
      ),
    );
  }
}

class TrackTile extends StatelessWidget {
  final int index;

  TrackTile({this.index});

  @override
  Widget build(BuildContext context) {
    Random random = Random();
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SongDataTile(
            imageUrl: "https://source.unsplash.com/random/200x200?sig=${index + 1}",
          ),
          Spacer(),
          Icon(Icons.headset, color: Colors.white),
          SizedBox(
            width: 5,
          ),
          Text(
            "${random.nextInt(500)}k",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(color: borderColor, width: 1)),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:8.0,horizontal:15),
                  child: Icon(
                    Icons.favorite_rounded,
                    color: navItemUnselectedColor,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.white60, width: 1.5)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.play_arrow_rounded,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

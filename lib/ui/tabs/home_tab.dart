
import 'package:flutter/material.dart';
import 'package:spotify_clone/ui/sections/genres_section.dart';
import 'package:spotify_clone/ui/sections/right_side_bar.dart';
import 'package:spotify_clone/ui/sections/tracks_of_week_section.dart';
import 'package:spotify_clone/ui/widgets/HighlightedPlaylists.dart';
import 'package:spotify_clone/ui/sections/popular_artist_section.dart';
import 'package:spotify_clone/ui/widgets/search_bar.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchBar(),
                HighlightedPlaylists(),
                SizedBox(
                  height: 25,
                ),
                Wrap(
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    GenresSection(),
                    SizedBox(
                      width: 25,
                    ),
                    TrackOfTheWeekSection(),
                    SizedBox(
                      width: 30,
                    ),
                    PopularArtist()
                  ],
                )
              ],
            ),
          ),
          Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: RightSideBar(),
              ))
        ],
      ),
    );
  }
}



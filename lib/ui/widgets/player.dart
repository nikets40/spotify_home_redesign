import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/ui/theme.dart';

class Player extends StatefulWidget {
  @override
  _PlayerState createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  var imgAddress =
      "https://images.unsplash.com/photo-1474176857210-7287d38d27c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2250&q=80";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      child: Stack(
        // mainAxisSize: MainAxisSize.min,
        fit: StackFit.expand,
        children: [
          Align(alignment: Alignment.centerLeft, child: SongDataTile()),
          Center(child: SongControls()),
          Align(alignment: Alignment.centerRight, child: PlayerControls())
        ],
      ),
    );
  }
}

class SongDataTile extends StatelessWidget {
  final String imageUrl;

  SongDataTile({this.imageUrl});

  @override
  Widget build(BuildContext context) {
    // return ListTile(
    //   leading: Container(
    //     height: 60,
    //     width: 60,
    //     decoration: BoxDecoration(
    //         borderRadius: BorderRadius.circular(15),
    //         image: DecorationImage(
    //             image: AssetImage("assets/jpg/artist.jpg"), fit: BoxFit.fill)),
    //   ),
    //   title: Text(
    //     "Andrews Garfield",
    //     overflow: TextOverflow.ellipsis,
    //     style: TextStyle(color: Colors.white),
    //   ),
    //   subtitle: Text(
    //     "I will fly away",
    //     overflow: TextOverflow.ellipsis,
    //     style: TextStyle(color: Colors.white.withOpacity(0.6)),
    //   ),
    // );

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 15,
        ),
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  image: imageUrl!=null? NetworkImage(imageUrl):AssetImage("assets/jpg/artist.jpg"),
                  fit: BoxFit.fill)),
        ),
        SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Andrews Garfield",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "I will fly away",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.white.withOpacity(0.6)),
            ),
          ],
        )
      ],
    );
  }
}

class SongControls extends StatefulWidget {
  @override
  _SongControlsState createState() => _SongControlsState();
}

class _SongControlsState extends State<SongControls> {
  var timeSlider = 10.0;

  @override
  Widget build(BuildContext context) {
    var sliderWidth = MediaQuery.of(context).size.width * 0.4;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
                hoverColor: Colors.white.withOpacity(0.2),
                customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.skip_previous_rounded),
                )),
            SizedBox(
              width: 10,
            ),
            InkWell(
              hoverColor: Colors.white.withOpacity(0.2),
              customBorder: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.pause,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
                hoverColor: Colors.white.withOpacity(0.2),
                customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.skip_next_rounded),
                )),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "00:20",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
                width: sliderWidth,
                child: SliderTheme(
                  data: SliderThemeData(
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0.0),
                    trackHeight: 2,
                    minThumbSeparation: 0,
                    overlayShape:
                        RoundSliderThumbShape(enabledThumbRadius: 2.0),
                  ),
                  child: Slider(
                    value: timeSlider,
                    onChanged: (val) {
                      setState(() {
                        timeSlider = val;
                      });
                    },
                    max: 100,
                    min: 0,
                    activeColor: Colors.white,
                    inactiveColor: navItemUnselectedColor,
                  ),
                )),
            Text(
              "02:40",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}

class PlayerControls extends StatefulWidget {
  @override
  _PlayerControlsState createState() => _PlayerControlsState();
}

class _PlayerControlsState extends State<PlayerControls> {
  var volumeSlider = 70.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.volume_up_rounded,color: Colors.white,),
        //Volume Slider
        SizedBox(
          width: 150,
          child: SliderTheme(
            data: SliderThemeData(
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
              trackHeight: 2,
            ),
            child: Slider(
              value: volumeSlider,
              onChanged: (val) {
                setState(() {
                  volumeSlider = val;
                });
              },
              max: 100,
              min: 0,
              activeColor: Colors.white,
              inactiveColor: navItemUnselectedColor,
            ),
          ),
        ),
        IconButton(
            onPressed: () {},
            color: Colors.white,
            icon: Icon(Icons.favorite_rounded)),
        IconButton(
            onPressed: () {}, color: Colors.white, icon: Icon(Icons.share)),
        Theme(
          data: Theme.of(context).copyWith(cardColor: Colors.red),
          child: PopupMenuButton(
            enableFeedback: false,
              tooltip: "",
              itemBuilder: (context) => [
               PopupMenuItem(child: ListTile(leading: Icon(Icons.airplay_rounded),)),
               PopupMenuItem(child: ListTile(leading: Icon(Icons.favorite_rounded),)),
               PopupMenuItem(child: ListTile(leading: Icon(Icons.share),)),
              ],
              color: Colors.white,
              icon: Icon(Icons.more_vert)),
        )
      ],
    );
  }
}

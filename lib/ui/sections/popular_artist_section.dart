import 'package:flutter/material.dart';
import 'package:spotify_clone/ui/widgets/titled_section.dart';

class PopularArtist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TitledSection(
      title: "Popular Artist",
      child: Container(
        width: 350,
        child: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: 6,
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            itemBuilder: (ctx, index) => Card(
                  color: Colors.primaries[index],
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        "assets/png/artist${index + 1}.png",
                        fit: BoxFit.cover,
                      ),
                      Material(color: Colors.accents[index].withOpacity(0.2),)
                    ],
                  ),
                )),
      ),
    );
  }
}

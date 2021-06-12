import 'package:flutter/material.dart';
import 'package:spotify_clone/ui/theme.dart';
import 'package:spotify_clone/ui/widgets/titled_section.dart';

class GenresSection extends StatelessWidget {
  final List<String> genres = [
    "Classic",
    "House",
    "Minimal",
    "Hip-Hop",
    "Electronic",
    "ChillOut",
    "Blues",
    "Country",
    "Techno"
  ];

  @override
  Widget build(BuildContext context) {
    return TitledSection(
      title: "Genres",
      child: SizedBox(
        width: 380,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              children: genres
                  .map((f) => Padding(
                        padding: EdgeInsets.only(
                            left: 0.0, right: 15.0, top: 10.0, bottom: 10.0),
                        child: InkWell(
                          customBorder: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Material(
                            color: listBgColor,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: borderColor, width: 1.5),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 25.0, vertical: 20.0),
                              child: Text(
                                f,
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.8),
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ),
                          onTap: () {},
                        ),
                      ))
                  .toList(),
            ),
            SizedBox(
              height: 10,
            ),
            PrimaryButton(
              onPressed: () {},
              label: "All Genres",
            )
          ],
        ),
      ),
    );
  }
}

class PrimaryButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color color;

  PrimaryButton({this.label = "", @required this.onPressed, this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: onPressed,
        child: Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              label,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 15),
            )),
        style: TextButton.styleFrom(
            backgroundColor: color ?? secondaryBgColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:spotify_clone/ui/sections/genres_section.dart';

import '../theme.dart';

class RightSideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: borderColor, width: 1.5)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(children: [
                    SizedBox(width: 10,),
                    IconButton(onPressed: (){}, icon: Icon(Icons.verified_user_rounded)),
                    SizedBox(width: 10,),
                    IconButton(onPressed: (){}, icon: Icon(Icons.settings_rounded)),
                    SizedBox(width: 10,),
                    IconButton(onPressed: (){}, icon: Icon(Icons.notifications_rounded)),
                    SizedBox(width: 10,),
                  ],),
                ),
              ),

              Spacer(),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: borderColor, width: 1)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:8.0,horizontal:15),
                      child: Icon(
                        Icons.arrow_drop_down_rounded,
                        size: 45,
                        color: navItemUnselectedColor,
                      ),
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage("https://images.unsplash.com/photo-1623113562048-627016402138?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80"),)
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 12,),
          FriendsActivity()
        ],
      ),
    );
  }
}




class FriendsActivity extends StatelessWidget {
  final Random random = Random();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: tertiaryBgColor,
      ),
      child: Padding(
        padding:
        const EdgeInsets.symmetric(vertical: 25.0, horizontal: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Friends Activity",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Icon(
                  Icons.widgets_rounded,
                  color: Color(0xff646464),
                )
              ],
            ),
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.only(top: 20),
                separatorBuilder: (_, __) => SizedBox(
                  height: 25,
                ),
                itemCount: 7,
                shrinkWrap: true,
                itemBuilder: (ctx, index) => Row(
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                            height: 75,
                            width: 75,
                            child: CircularProgressIndicator(
                              color: accentColor,
                              strokeWidth: 3,
                              value: random.nextDouble(),
                            )),
                        Positioned.fill(
                          child: Center(
                            child: CircleAvatar(
                              radius: 28,
                              backgroundImage: NetworkImage(
                                  "https://source.unsplash.com/random/200x200?sig=${index + 1}"),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Andrews Garfield",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "I will fly away",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.6)),
                        ),
                      ],
                    )
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            PrimaryButton(
              onPressed: () {},
              label: "View All",
              color: borderColor,
            )
          ],
        ),
      ),
    );
  }
}


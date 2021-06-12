import 'package:flutter/material.dart';

import '../theme.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FocusNode focusNode = FocusNode();
    focusNode.unfocus();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
      child: GestureDetector(
        onTap: (){
          focusNode.requestFocus();
        },
        child: Container(
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
              color: secondaryBgColor,
              border: Border.all(width: 2, color: borderColor),
              borderRadius: BorderRadius.circular(100)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:15.0),
            child: Row(
              children: [
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(width: 2, color: Colors.white),
                  ),
                ),
                SizedBox(width: 15,),
                Expanded(
                    child: TextField(
                      focusNode: focusNode,
                      style: TextStyle(color: Colors.white,fontSize: 14),
                      cursorColor: Colors.white,
                      decoration: InputDecoration.collapsed(
                          hintText: "Search...",
                          hintStyle: TextStyle(color: Colors.white.withOpacity(0.8),fontSize: 14)),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
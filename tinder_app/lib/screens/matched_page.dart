import 'package:flutter/material.dart';

class MatchedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 25),
          height: 50,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                  bottom: BorderSide(color: Colors.grey[200], width: 1))),
        )
      ],
    ));
  }
}

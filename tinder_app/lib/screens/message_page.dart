import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.search,
                size: 30,
                color: Colors.pinkAccent,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 80,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Search | matches',
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              "New Matches",
              style: TextStyle(color: Colors.pink, fontSize: 16),
            ),
          ),
          ListView(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(color: Colors.orange),
              )
            ],
          )
        ],
      ),
    );
  }
}

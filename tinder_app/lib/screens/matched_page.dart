import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MatchedPage extends StatefulWidget {
  @override
  _MatchedPageState createState() => _MatchedPageState();
}

class _MatchedPageState extends State<MatchedPage> {
  bool likes = true;

  bool picks = false;

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
              bottom: BorderSide(color: Colors.grey[200], width: 1),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 100,
                child: GestureDetector(
                  child: Text(
                    "71 Likes",
                    style: likes
                        ? TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 22)
                        : TextStyle(
                            color: Colors.grey[300],
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    setState(() {
                      if (!likes) {
                        likes = true;
                        picks = false;
                      }
                    });
                  },
                ),
              ),
              Container(
                width: 2,
                height: 30,
                decoration: BoxDecoration(color: Colors.grey[200]),
              ),
              Container(
                width: 100,
                child: GestureDetector(
                  child: Text(
                    "Top Picks",
                    style: picks
                        ? TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 22)
                        : TextStyle(
                            color: Colors.grey[300],
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    setState(() {
                      if (!picks) {
                        picks = true;
                        likes = false;
                      }
                    });
                  },
                ),
              )
            ],
          ),
        ),
        likes
            ? Expanded(
                child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                color: Colors.white,
                child: GridView.count(
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  children: [
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(
                            image: AssetImage("assets/Images/pro1.jpeg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(
                            image: AssetImage("assets/Images/pro2.jpeg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(
                            image: AssetImage("assets/Images/pro3.jpeg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(
                            image: AssetImage("assets/Images/pro1.jpeg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(
                            image: AssetImage("assets/Images/pro2.jpeg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
              ))
            : Container()
      ],
    ));
  }
}

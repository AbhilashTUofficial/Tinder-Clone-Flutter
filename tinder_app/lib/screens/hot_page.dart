import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HotPage extends StatefulWidget {
  @override
  _HotPageState createState() => _HotPageState();
}

class _HotPageState extends State<HotPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 28, left: 6, right: 6, bottom: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          Container(
            height: 900,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image(
                  image: AssetImage("assets/Images/pro3.jpeg"),
                  fit: BoxFit.fitHeight),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [Colors.black, Colors.transparent],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 24, left: 24, right: 24, bottom: 10),
            margin: EdgeInsets.only(top: 500),
            height: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Pug Rufus",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          fontFamily: "arial",
                          letterSpacing: 1),
                    ),
                    Text(
                      "  22",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontFamily: "arial",
                          letterSpacing: 1),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 6),
                      alignment: Alignment.center,
                      width: 120,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.circular(30)),
                      child: Text(
                        "Dog lover",
                        style:
                            TextStyle(color: Colors.white, letterSpacing: 0.3),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 6),
                      alignment: Alignment.center,
                      width: 120,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.circular(30)),
                      child: Text(
                        "Cat hater",
                        style:
                            TextStyle(color: Colors.white, letterSpacing: 0.3),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 6),
                      alignment: Alignment.center,
                      width: 180,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.circular(30)),
                      child: Text(
                        "Software developer",
                        style:
                            TextStyle(color: Colors.white, letterSpacing: 0.3),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 6),
                      alignment: Alignment.center,
                      width: 80,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.circular(30)),
                      child: Text(
                        "Rich",
                        style:
                            TextStyle(color: Colors.white, letterSpacing: 0.3),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.white, width: 1.0)),
                      child: SvgPicture.asset(
                        "assets/Icons/refresh.svg",
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.white, width: 1.0)),
                      child: Icon(
                        Icons.close_rounded,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.white, width: 1.0)),
                      child: SvgPicture.asset(
                        "assets/Icons/star.svg",
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.white, width: 1.0)),
                      child: SvgPicture.asset(
                        "assets/Icons/like.svg",
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.white, width: 1.0)),
                      child: SvgPicture.asset(
                        "assets/Icons/lightning.svg",
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

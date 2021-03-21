import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tinder_app/export.dart';

class Frame extends StatefulWidget {
  @override
  _FrameState createState() => _FrameState();
}

class _FrameState extends State<Frame> {
  int _currentTab = 0;
  final _tabs = [HotPage(), MatchedPage(), MessagePage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentTab,
          onTap: (int value) {
            setState(() {
              _currentTab = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/Icons/hot.svg",
                width: 22,
              ),
              title: SizedBox.shrink(),
              activeIcon: SvgPicture.asset(
                "assets/Icons/active_hot.svg",
                width: 22,
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/Icons/likes.svg",
                width: 26,
              ),
              title: SizedBox.shrink(),
              activeIcon: SvgPicture.asset(
                "assets/Icons/active_likes.svg",
                width: 26,
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/Icons/chat.svg",
                width: 22,
              ),
              title: SizedBox.shrink(),
              activeIcon: SvgPicture.asset(
                "assets/Icons/active_chat.svg",
                width: 22,
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/Icons/account.svg",
                width: 22,
              ),
              title: SizedBox.shrink(),
              activeIcon: SvgPicture.asset(
                "assets/Icons/active_account.svg",
                width: 22,
              ),
            ),
          ],
        ),
        body: _tabs[_currentTab]);
  }
}


import 'package:curved_nav_bar/curved_bar/curved_action_bar.dart';
import 'package:curved_nav_bar/fab_bar/fab_bottom_app_bar_item.dart';
import 'package:curved_nav_bar/flutter_curved_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

import '../pages/inbox_page.dart';
import 'appbar_widget.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return CurvedNavBar(
      actionButton: CurvedActionBar(
          onTab: (value) {
            /// perform action here
            print(value);
          },
          activeIcon: Container(
            padding: EdgeInsets.all(8),
            decoration:
                const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
            child: const Icon(
              Icons.document_scanner_outlined,
              size: 43,
              color: Color(0xFFE11471),
            ),
          ),
          inActiveIcon: Container(
            padding: EdgeInsets.all(8),
            decoration:
                BoxDecoration(color: Colors.white, shape: BoxShape.circle),
            child: Icon(
              Icons.document_scanner_outlined,
              size: 43,
              color: Color(0xFFE11471),
            ),
          ),
          text: "Scan QR"),
      activeColor: Color(0xFFE11471),
      inActiveColor: Colors.black45,
      appBarItems: [
        FABBottomAppBarItem(
            activeIcon: Icon(
              Icons.home,
              size: 33,
              color: Color(0xFFE11471),
            ),
            inActiveIcon: const Icon(
              Icons.home,
              size: 33,
              color: Colors.black26,
            ),
            text: 'Home'),
        FABBottomAppBarItem(
            activeIcon: const Icon(
              Icons.insert_comment,
              size: 33,
              color: Color(0xFFE11471),
            ),
            inActiveIcon: Icon(
              Icons.insert_comment,
              size: 33,
              color: Colors.black26,
            ),
            text: 'Inbox'),
      ],
      bodyItems: [
        AppBarWidget(),
        InboxPage(),
      ],
      actionBarView: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.orange,
      ),
    );
  }
}

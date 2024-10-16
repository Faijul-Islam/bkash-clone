import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';

import '../pages/norification_page.dart';
import '../pages/transaction_page.dart';

class TabbarWidget extends StatelessWidget {
  const TabbarWidget(
      {Key? key,
      required this.tab1,
      required this.tab2,
      required this.tabTitle1,
      required this.tabTitle2})
      : super(key: key);
  final Widget tab1;
  final Widget tab2;
  final String tabTitle1, tabTitle2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration:
            BoxDecoration(border: Border.all(color: Colors.grey, width: 0.4)),
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          child: ContainedTabBarView(
            tabs: const [
              Text(
                'Notification',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'Transactions',
                style: TextStyle(fontSize: 16),
              ),
            ],
            tabBarProperties: TabBarProperties(
              indicatorColor: Colors.pink,
              labelColor: Colors.pink,
              unselectedLabelColor: Colors.grey[400],
            ),
            views: const [NotificationPage(), TransactionPage()],
            onChange: (index) => print(index),
          ),
        ),
      ),
    );
  }
}

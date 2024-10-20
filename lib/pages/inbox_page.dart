
import 'package:flutter/material.dart';

import '../widgets/tabbar_widget.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 65,
        backgroundColor: Colors.pink,
        title: const Center(
            child: Text(
          'Inbox',
          style: TextStyle(color: Colors.white),
        )),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 12.0, right: 12.0),
            child: InkWell(
              child: SizedBox(
                  width: 34, height: 34, child: Image.asset('assets/logo.png')),
            ),
          )
        ],
      ),
      // body: TabbarWidget(),
    );
  }
}

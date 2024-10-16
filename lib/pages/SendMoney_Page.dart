
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/myContact_widget.dart';
import '../widgets/recent_contact_widget.dart';
import 'amount_page.dart';

class SendMoneyPage extends StatelessWidget {
  const SendMoneyPage({Key? key}) : super(key: key);

  void showLoadingAnimation(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false, // Prevent dismissing the dialog
      builder: (context) {
        return Center(
          child: Center(
            child: Image(image: AssetImage('assets/loading.gif')),
          ),
        );
      },
    );

    // Simulate a short delay before navigating
    Future.delayed(Duration(seconds: 1), () {
      // Hide the loading animation dialog
      Navigator.of(context).pop();

      // Navigate to the next page
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AmmountPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE11471),
        toolbarHeight: 65,
        title: Center(
            child: Text(
          'Send Money',
          style: TextStyle(
              color: Colors.white, fontSize: 19, fontWeight: FontWeight.w600),
        )),
        iconTheme: IconThemeData(
          size: 30,
          color: Colors.white, // Change this color to your desired color
        ),
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
      body: Container(
        margin: EdgeInsets.all(12.sp),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 0.3)),
              child: Container(
                padding: EdgeInsets.all(10.sp),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'To',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter name or number',
                        hintStyle: TextStyle(
                          fontSize: 17.sp,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            showLoadingAnimation(context);
                          },
                          child: Icon(
                            Icons.arrow_forward_outlined,
                            size: 30.sp,
                          ),
                        ), // Replace with the desired icon
                      ),
                    )
                  ],
                ),
              ),
            ),
            // here using exapanded keyword we can stuck the first container and the rest of container scrollable using singleChindScrollViewr
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 8.h,
                      ),
                      Container(
                        padding: EdgeInsets.all(6.sp),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 0.2)),
                        child: Row(
                          children: [
                            Image(
                              image: const AssetImage('assets/fnf.png'),
                              width: 40.w,
                            ),
                            Text(
                              'Tap here to Send Money for free',
                              style: TextStyle(
                                  color: const Color(0xFFE11471),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15.sp),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 18.h,
                      ),
                      const RecentContactWidget(),
                      SizedBox(
                        height: 18.h,
                      ),
                      const MyContactWidget()
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

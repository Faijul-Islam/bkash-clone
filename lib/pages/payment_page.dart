import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'amount_page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  void showLoadingAnimation(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false, // Prevent dismissing the dialog
      builder: (context) {
        return const Center(
          child: Center(
            child: Image(image: AssetImage('assets/loading.gif')),
          ),
        );
      },
    );
    // Simulate a short delay before navigating
    Future.delayed(const Duration(seconds: 1), () {
      // Hide the loading animation dialog
      Navigator.of(context).pop();
      // Navigate to the next page
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const AmmountPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFE11471),
        toolbarHeight: 65,
        title: Center(
            child: Text(
              "Payment",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 19.sp,
                  fontWeight: FontWeight.w600),
            )),
        iconTheme: IconThemeData(
          size: 30.sp,
          color: Colors.white, // Change this color to your desired color
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 12.0, right: 12.0),
            child: InkWell(
              child: SizedBox(
                  width: 34,
                  height: 34,
                  child: Image.asset('assets/logo.png')),
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
                    TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter name or Agent number',
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
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.pink, width: 0.3)),
              child: Container(
                padding: EdgeInsets.all(10.sp),
                color: Colors.white,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: 34,
                        height: 34,
                        child: Image.asset('assets/logo.png')),
                    Text("Tap To Scan QR Code",
                      style: TextStyle(color: Colors.pink,fontSize: 16.sp),)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

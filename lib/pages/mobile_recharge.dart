import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/myContact_widget.dart';
import '../widgets/recent_contact_widget.dart';
import 'amount_page.dart';

class MobileRecharge extends StatefulWidget {
  const MobileRecharge({Key? key}) : super(key: key);

  @override
  State<MobileRecharge> createState() => _MobileRechargeState();
}

class _MobileRechargeState extends State<MobileRecharge> {

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
            'Mobile Recharge',
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
            child: Column(children: [
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
                        'For',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16.sp),
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

              Expanded(
                child: SingleChildScrollView(
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
                              'Your Auto Payments(0)',
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
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 0.3)),
                        child: Container(
                          padding: EdgeInsets.only(top: 10.h,bottom: 10.h),
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(left: 10.w),
                                child: Text(
                                  'My account',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500, fontSize: 16.sp),
                                ),
                              ),
                              const Divider(
                                thickness: .5,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(top: 10.0, left: 12.0, bottom: 4.0),
                                    child: CircleAvatar(
                                      radius: 28.0,
                                      backgroundColor: Colors.grey[200],
                                      backgroundImage: const AssetImage('assets/im.jpeg'),
                                    ),
                                  ),
                                  SizedBox(width: 10.w,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Faijul Islam",style: TextStyle(fontSize: 16.sp),),
                                      Text("01764474873",style: TextStyle(fontSize: 16.sp),),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
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
              )
            ]
            )
        )
    );
  }
}

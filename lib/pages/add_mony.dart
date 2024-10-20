
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddMoney extends StatefulWidget {
  const AddMoney({Key? key}) : super(key: key);

  @override
  State<AddMoney> createState() => _AddMoneyState();
}

class _AddMoneyState extends State<AddMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFE11471),
        toolbarHeight: 65,
        title: Center(
            child: Text(
              "Add Money",
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
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: 40.h,
              child:const Center(child:  Text("select your Add Money Source")),
            ),
            Divider(
              thickness: 4.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10.w,
                ),
                CircleAvatar(
                  radius: 30.r,
                  backgroundColor: Colors.pink,
                ),
                SizedBox(
                  width: 20.w,
                ),
                Text("Bank to bkash"),
                Spacer(),
                Card(
                  elevation: 3,
                  child: CircleAvatar(
                    radius: 6.r,
                    backgroundColor: Colors.pink,
                  ),),
                SizedBox(
                  width: 12.w,
                ),
              ],
            ),
            Divider(
              thickness: 1.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10.w,
                ),
                CircleAvatar(
                  radius: 30.r,
                  backgroundColor: Colors.pink,
                ),
                SizedBox(
                  width: 20.w,
                ),
                Text("Card to bkash"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

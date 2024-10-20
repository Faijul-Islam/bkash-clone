import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CommonAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFE11471),
      toolbarHeight: 65,
      title: Center(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 19.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      iconTheme: IconThemeData(
        size: 30.sp,
        color: Colors.white, // Change this color to your desired color
      ),
      actions:[Padding(
        padding: const EdgeInsets.only(top: 12.0, right: 12.0),
        child: InkWell(
          child: SizedBox(
              width: 34,
              height: 34,
              child: Image.asset('assets/logo.png')),
        ),
      )], // Use an empty list if actions are not provided
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(65);
}

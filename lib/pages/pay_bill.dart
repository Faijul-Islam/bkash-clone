import 'package:bkash_app/widgets/common_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PayBill extends StatefulWidget {
  const PayBill({Key? key}) : super(key: key);

  @override
  State<PayBill> createState() => _PayBillState();
}

class _PayBillState extends State<PayBill> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar:CommonAppBar(title: "Pay Bill"),
    );
  }
}

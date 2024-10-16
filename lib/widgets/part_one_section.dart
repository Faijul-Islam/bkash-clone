import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../data/home_page_first_part_data.dart';
import '../pages/SendMoney_Page.dart';
import '../pages/mobile_recharge.dart';

class PartOneHome extends StatefulWidget {
  const PartOneHome({Key? key}) : super(key: key);

  @override
  State<PartOneHome> createState() => _PartOneHomeState();
}

class _PartOneHomeState extends State<PartOneHome> {
  bool isExpanded = false;
//see more toggle
  void toggleExpansion() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  //loading part
  void showLoadingAnimation(BuildContext context, Widget onTap) {
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
    Future.delayed(Duration(seconds: 1), () {
      // Hide the loading animation dialog
      Navigator.of(context).pop();
      // Navigate to the next page
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => onTap),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double containerHeight =
        isExpanded ? 380 : 240; // Adjust the heights as needed
    return Container(
      height: containerHeight,
      padding: EdgeInsets.all(0.0.sp), // Add padding for the shadow effect
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Stack(
          children: [
            InkWell(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                child: GridView.builder(
                  physics:
                      const NeverScrollableScrollPhysics(),
                  //cannot scroll the gridview section
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        // Check if the first item is tapped (index 0)
                        if (index == 0) {
                          showLoadingAnimation(context,const SendMoneyPage());
                        } else if (index == 1) {
                          showLoadingAnimation(
                              context, const MobileRecharge());
                        }
                        // You can add similar navigation logic for other items here
                      },
                      child: Container(
                        child: menuodel[index],
                      ),
                    );
                  },
                  itemCount: menuodel.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 14,
                    crossAxisSpacing: 14,
                  ),
                ),
              ),
            ),
            if (isExpanded)
              Positioned(
                top: 300.0,
                right: 150,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors
                        .white, // Set the button background color to white
                    elevation: 1, // Remove the default button elevation
                    shadowColor: Colors
                        .transparent, // Make the button's shadow transparent
                  ),
                  onPressed: toggleExpansion,
                  child: Text(isExpanded ? 'Close' : 'See More',
                      style: const TextStyle(color: Colors.pink)),
                ),
              )
            else
              Positioned(
                top: 190.0,
                right: 150,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(2, 6),
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 96,
                          spreadRadius: 3),
                    ],
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors
                          .white, // Set the button background color to white
                      elevation: 1, // Remove the default button elevation
                      shadowColor: Colors
                          .transparent, // Make the button's shadow transparent
                    ),
                    onPressed: toggleExpansion,
                    child: Text(isExpanded ? 'Close' : 'See More',
                        style: const TextStyle(color: Colors.pink)),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

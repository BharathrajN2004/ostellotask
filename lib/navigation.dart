import 'package:flutter/material.dart';
import 'package:ostellotask/market_place.dart';
import 'package:ostellotask/news.dart';
import 'package:ostellotask/utilities/constants.dart';

import 'components/text.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  String selectedNavigation = navigationTitle[1];

  void setNav(String title) {
    setState(() => selectedNavigation = title);
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double aspectRatio = MediaQuery.of(context).size.aspectRatio;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(children: [
          Container(
            color: appBarColor,
            padding: EdgeInsets.only(
              top: height * 0.02,
              left: width * 0.04,
              right: width * 0.04,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/back.png",
                            height: aspectRatio * 55,
                            width: aspectRatio * 55,
                          ),
                          SizedBox(width: width * 0.02),
                          CustomText(
                            text: "Radiology",
                            size: aspectRatio * 50,
                            weight: FontWeight.bold,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            "assets/images/heart.png",
                            height: aspectRatio * 55,
                            width: aspectRatio * 55,
                          ),
                          Image.asset(
                            "assets/images/forward.png",
                            height: aspectRatio * 55,
                            width: aspectRatio * 55,
                          ),
                          Container(
                            padding: EdgeInsets.all(aspectRatio * 12),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Image.asset(
                              "assets/images/robot.png",
                              height: aspectRatio * 50,
                              width: aspectRatio * 50,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.015),
                // Navigator
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: navigationTitle.map((value) {
                      bool isSelected = selectedNavigation == value;
                      return GestureDetector(
                        onTap: () =>
                            value != navigationTitle[0] ? setNav(value) : null,
                        child: AnimatedContainer(
                          duration: Durations.long1,
                          width: width * .28,
                          padding:
                              EdgeInsets.symmetric(vertical: height * 0.008),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: isSelected
                                    ? primaryColor
                                    : Colors.transparent,
                                width: 2,
                              ),
                            ),
                          ),
                          alignment: Alignment.center,
                          child: CustomText(
                            text: value,
                            size: aspectRatio * (isSelected ? 36 : 35),
                            weight: isSelected ? FontWeight.w800 : null,
                            color: isSelected ? primaryColor : null,
                          ),
                        ),
                      );
                    }).toList()),
              ],
            ),
          ),

          // Main page Layout
          selectedNavigation == navigationTitle[1]
              ? const MarketPlace()
              : const News(),
        ]),
      ),
    );
  }
}

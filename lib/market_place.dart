import 'package:flutter/material.dart';

import 'components/text.dart';
import 'utilities/constants.dart';

class MarketPlace extends StatelessWidget {
  const MarketPlace({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double aspectRatio = MediaQuery.of(context).size.aspectRatio;

    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.only(top: height * 0.01),
        itemCount: 11,
        itemBuilder: (context, index) {
          bool isLast = index == 9;
          bool bannerShow = index == 10;
          return bannerShow
              ? Container(
                  width: width,
                  padding: EdgeInsets.symmetric(vertical: height * 0.01),
                  decoration: BoxDecoration(gradient: gradientColor),
                  alignment: Alignment.center,
                  child: CustomText(
                    text:
                        "Getting guidance has now become easy\n12+ coaching centers nearby",
                    maxLine: 2,
                    size: aspectRatio * 32,
                    align: TextAlign.center,
                    height: 1.35,
                  ),
                )
              : Container(
                  margin: EdgeInsets.only(
                    right: width * 0.06,
                    left: width * 0.06,
                  ),
                  padding: EdgeInsets.only(
                    top: height * 0.02,
                    bottom: height * 0.02,
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: isLast
                            ? Colors.transparent
                            : const Color.fromARGB(60, 76, 68, 82),
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      // Image Layout
                      Container(
                        height: height * 0.175,
                        width: height * 0.17,
                        padding: EdgeInsets.symmetric(
                            vertical: height * 0.008,
                            horizontal: width * 0.018),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/img.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // verified badge
                            Container(
                              width: width * 0.2,
                              padding: EdgeInsets.symmetric(
                                horizontal: width * 0.01,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: const Color(0xFF0070CE),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SizedBox(width: width * 0.01),
                                  CustomText(
                                    text: "Verified",
                                    color: Colors.white,
                                    size: aspectRatio * 28,
                                    height: 1.2,
                                  ),
                                  const Spacer(),
                                  Image.asset(
                                    "assets/images/tick_badge.png",
                                    height: aspectRatio * 40,
                                    width: aspectRatio * 40,
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: "50% off",
                                      color: Colors.white,
                                      weight: FontWeight.w900,
                                      size: aspectRatio * 38,
                                    ),
                                    CustomText(
                                      text: "UPTO ₹1000",
                                      color: const Color.fromARGB(
                                          255, 227, 227, 227),
                                      weight: FontWeight.bold,
                                      size: aspectRatio * 26,
                                    )
                                  ],
                                ),
                                Icon(
                                  Icons.favorite_outline_outlined,
                                  color:
                                      const Color.fromARGB(236, 255, 255, 255),
                                  size: aspectRatio * 60,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),

                      // Context Layout
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(
                            left: width * 0.04,
                            top: height * 0.01,
                            bottom: 4,
                          ),
                          height: height * 0.175,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  text: "Shiska Coaching Center",
                                  size: aspectRatio * 36,
                                  weight: FontWeight.w900,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                        right: width * 0.01,
                                      ),
                                      padding: const EdgeInsets.all(2),
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.green,
                                      ),
                                      child: Icon(
                                        Icons.star,
                                        size: aspectRatio * 28,
                                        color: Colors.white,
                                      ),
                                    ),
                                    CustomText(
                                      text: "4.5 (100+ Rating)",
                                      size: aspectRatio * 28,
                                      weight: FontWeight.bold,
                                    ),
                                  ],
                                ),
                                SizedBox(height: height * 0.002),
                                Row(
                                  children: [
                                    CustomText(
                                      text: "All Subjects",
                                      color: fontColor.withOpacity(.8),
                                    ),
                                    SizedBox(width: width * 0.01),
                                    Expanded(
                                      child: SizedBox(
                                        height: height * 0.02,
                                        child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: width * 0.01),
                                          itemCount: subjects.length,
                                          itemBuilder: (context, index) =>
                                              Container(
                                            margin: EdgeInsets.only(
                                                right: width * 0.015),
                                            child: Row(
                                              children: [
                                                Container(
                                                  width: 3,
                                                  height: 3,
                                                  margin: const EdgeInsets
                                                      .symmetric(horizontal: 4),
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: fontColor
                                                        .withOpacity(.8),
                                                  ),
                                                ),
                                                CustomText(
                                                  text: subjects[index],
                                                  color:
                                                      fontColor.withOpacity(.8),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    CustomText(
                                      text: "Kalkaji",
                                      color: fontColor.withOpacity(.8),
                                    ),
                                    Container(
                                      width: 3,
                                      height: 3,
                                      margin: EdgeInsets.only(
                                          right: 4, left: width * 0.02),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: fontColor.withOpacity(.8),
                                      ),
                                    ),
                                    CustomText(
                                      text: "3 kms away",
                                      color: fontColor.withOpacity(.8),
                                    ),
                                  ],
                                ),
                                SizedBox(height: height * 0.002),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: width * 0.03),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: const Color(0xFFF4F3F4),
                                  ),
                                  child: CustomText(
                                    text: "View Details",
                                    color: primaryColor,
                                    weight: FontWeight.bold,
                                    size: aspectRatio * 32,
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    ],
                  ),
                );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'components/text.dart';
import 'utilities/constants.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double aspectRatio = MediaQuery.of(context).size.aspectRatio;

    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.only(top: height * 0.01),
        itemCount: 4,
        itemBuilder: (context, index) {
          bool isLast = index == 3;
          return Container(
            margin: EdgeInsets.only(
              right: width * 0.06,
              left: width * 0.06,
            ),
            padding: EdgeInsets.only(
              top: height * 0.025,
              bottom: height * 0.025,
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
            child: Column(
              children: [
                Row(
                  children: [
                    CustomText(
                      text: "The Economic Times",
                      color: fontColor.withOpacity(.8),
                    ),
                    Container(
                      width: 3,
                      height: 3,
                      margin: EdgeInsets.only(right: 4, left: width * 0.02),
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
                SizedBox(height: height * 0.01),
                CustomText(
                  text:
                      "Virtual & augmented reality (VR & AR) tech is being adopted in radiology",
                  maxLine: 2,
                  size: aspectRatio * 34,
                  height: 1.5,
                  color: fontColor.withOpacity(.8),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

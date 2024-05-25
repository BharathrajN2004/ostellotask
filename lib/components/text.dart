import 'package:flutter/material.dart';
import '../utilities/constants.dart';

class CustomText extends StatelessWidget {
  final String text;
  final FontWeight? weight;
  final double? size;
  final Color? color;
  final double? height;
  final TextAlign? align;
  final int? maxLine;
  final bool? loadingState;
  final double? length;

  @override
  const CustomText({
    super.key,
    required this.text,
    this.weight = FontWeight.w600,
    this.size,
    this.color,
    this.height = 0,
    this.align = TextAlign.start,
    this.maxLine = 1,
    this.loadingState = false,
    this.length = 0.1,
  });

  @override
  Widget build(BuildContext context) {
    double aspectRatio = MediaQuery.of(context).size.aspectRatio;

    double fontSize = aspectRatio * 30;

    return Text(
      text,
      textAlign: align,
      maxLines: maxLine,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: size ?? fontSize,
        fontWeight: weight,
        color: color ?? fontColor,
        height: height,
      ),
    );
  }
}

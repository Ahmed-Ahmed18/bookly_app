import 'package:first/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final String text;
  final double? fontSize;
  final BorderRadius? borderRadius;

  const CustomButton({
    super.key,
    required this.text,
    this.fontSize,
    required this.textColor,
    required this.backgroundColor,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius:
              borderRadius ??
              BorderRadiusGeometry.only(
                topLeft: Radius.circular(18),
                bottomRight: Radius.circular(18),
              ),
        ),
      ),
      child: Text(
        text,
        style: Styles.textStyle18.copyWith(
          color: textColor,
          fontSize: fontSize,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}

import 'package:booky_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
 const ActionButton({
    super.key,
    required this.text,
    required this.backGroundColor,
    required this.textColor,
    this.borderRadius,
    this.fontSize,
  });

  final String text;
  final Color backGroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backGroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
            color: textColor,
            fontWeight: FontWeight.w900,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}

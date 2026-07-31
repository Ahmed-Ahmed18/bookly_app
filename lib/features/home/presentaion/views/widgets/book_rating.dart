import 'package:booky_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  BookRating({super.key, this.mainAxisAlignment = MainAxisAlignment.start});

  MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(Icons.star, color: Color(0xffFFDD4F)),
        const SizedBox(width: 6.3),
        Text('4.8', style: Styles.textStyle16.copyWith(
          fontWeight: FontWeight.w700
        )),
        const SizedBox(width: 6.3),
        Opacity(
          opacity: .7,
          child: Text(
            '(2390)',
            style: Styles.textStyle14
          ),
        ),
      ],
    );
  }
}

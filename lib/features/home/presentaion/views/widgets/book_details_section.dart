import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'custom_book_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .21),
          child: CustomBookImage(),
        ),
        const SizedBox(height: 43),
        Text(
          'Harry Potter and the Goblet of  Fire',
          style: Styles.textStyle30,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 6),
        Opacity(
          opacity: .7,
          child: Text('J.K. Rowling', style: Styles.textStyle18),
        ),
        const SizedBox(height: 18),
        BookRating(mainAxisAlignment: MainAxisAlignment.center),
      ],
    );
  }
}

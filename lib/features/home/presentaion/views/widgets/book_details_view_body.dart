import 'package:booky_app/features/home/presentaion/views/widgets/book_rating.dart';
import 'package:booky_app/features/home/presentaion/views/widgets/custom_book_details_app_bar.dart';
import 'package:booky_app/features/home/presentaion/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            CustomBookDetailsAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * .25),
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
            BookRating(mainAxisAlignment: MainAxisAlignment.center,)
          ],
        ),
      ),
    );
  }
}

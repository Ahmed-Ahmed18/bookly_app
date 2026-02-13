import 'package:first/core/utils/styles.dart';
import 'package:first/features/home/presentation/view/widgets/book_rating.dart';
import 'package:first/features/home/presentation/view/widgets/custom_book_image.dart';
import 'package:first/features/home/presentation/view/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

import 'books_action.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .17),
            child: CustomBookImage(),
          ),
          const SizedBox(height: 42),
          Text(
            'Star Wars Return of the Jedi',
            style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 13),
          Opacity(
            opacity: .7,
            child: Text(
              'J.K. Rowling',
              style: Styles.textStyle18.copyWith(
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          const SizedBox(height: 20),
          const BookRating(mainAxisAlignment: MainAxisAlignment.center),
          const SizedBox(height: 41),
          const BookAction(),
          const SizedBox(height: 50),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text('You can also like', style: Styles.textStyle16),
          ),
          const SizedBox(height: 20),
          SimilarBookListView(),
        ],
      ),
    );
  }
}

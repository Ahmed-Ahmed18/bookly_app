import 'package:booky_app/features/home/presentaion/views/widgets/books_action.dart';
import 'package:booky_app/features/home/presentaion/views/widgets/custom_book_details_app_bar.dart';
import 'package:booky_app/features/home/presentaion/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

import 'book_details_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BookDetailsSection(),
                const SizedBox(height: 42),
                BooksAction(),
                SizedBox(height: 50),
                SimilarBooksSection(),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

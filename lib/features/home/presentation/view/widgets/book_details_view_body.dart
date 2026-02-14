import 'package:first/features/home/presentation/view/widgets/similar_books_list_section.dart';
import 'package:flutter/material.dart';

import 'books_action.dart';
import 'books_details_section.dart';
import 'custom_book_details_app_bar.dart';

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
              children: const [
                CustomBookDetailsAppBar(),
                BookDetailsSection(),
                SizedBox(height: 41),
                BookAction(),
                SizedBox(height: 50),
                SimilarBookListSection(),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

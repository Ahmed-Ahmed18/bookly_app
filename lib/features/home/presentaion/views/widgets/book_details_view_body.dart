import 'package:booky_app/features/home/presentaion/views/widgets/book_rating.dart';
import 'package:booky_app/features/home/presentaion/views/widgets/books_action.dart';
import 'package:booky_app/features/home/presentaion/views/widgets/custom_book_details_app_bar.dart';
import 'package:booky_app/features/home/presentaion/views/widgets/custom_book_item.dart';
import 'package:booky_app/features/home/presentaion/views/widgets/similar_book_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
         child:  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * .2),
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
                BookRating(mainAxisAlignment: MainAxisAlignment.center,),
                const SizedBox(height: 42,),
                BooksAction(),
                SizedBox(height: 50,),
                Align(alignment: Alignment.centerLeft,
                    child: Text('You can also like',style: Styles.textStyle16.copyWith(
                        fontWeight: FontWeight.w600
                    ),)),
                const SizedBox(height: 20,),
                SimilarBookListView(),
                const SizedBox(height: 40),
              ],
            ),
          ),
        )
      ],
    ) ;

  }
}

import 'package:booky_app/features/home/presentaion/views/widgets/similar_book_list_view.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/styles.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'You can also like',
            style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(height: 20),
        SimilarBookListView(),
      ],
    );
  }
}

import 'package:first/features/home/presentation/view/widgets/similar_books_list_view.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/styles.dart';

class SimilarBookListSection extends StatelessWidget {
  const SimilarBookListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: Text('You can also like', style: Styles.textStyle16),
        ),
        const SizedBox(height: 20),
        SimilarBookListView(),
      ],
    );
  }
}

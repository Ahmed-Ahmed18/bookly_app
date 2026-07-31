import 'package:flutter/cupertino.dart';

import '../../../../home/presentaion/views/widgets/best_seller_list_view_item.dart';

class SearchResultListview extends StatelessWidget {
  const SearchResultListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: BestSellerListViewItem(),
      ),
      itemCount: 10,
    );
  }
}

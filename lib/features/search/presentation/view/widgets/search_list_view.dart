import 'package:flutter/cupertino.dart';

import '../../../../home/presentation/view/widgets/best_seller_list_view_item.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: BestSellerListViewItem(),
      ),
      itemCount: 30,
    );
  }
}

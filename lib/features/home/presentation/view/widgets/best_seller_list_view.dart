import 'package:flutter/cupertino.dart';

import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder:
          (context,index)=>Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: BestSellerListViewItem(),
      ),itemCount: 30,);
  }
}
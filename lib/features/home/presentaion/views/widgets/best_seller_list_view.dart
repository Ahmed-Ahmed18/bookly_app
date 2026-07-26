import 'package:booky_app/features/home/presentaion/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/cupertino.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context,index)=>BestSellerListViewItem(),
     itemCount: 10,
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}

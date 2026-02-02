import 'package:flutter/cupertino.dart';

import 'featured_list_view_item.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder:
              (context,index)=>Padding(
              padding: EdgeInsets.symmetric(horizontal: 8) ,
              child: const FeaturedListViewItem())),
    );
  }
}
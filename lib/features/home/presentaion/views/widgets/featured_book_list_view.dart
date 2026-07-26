import 'package:booky_app/features/home/presentaion/views/widgets/featured_list_view_item.dart';
import 'package:flutter/cupertino.dart';

class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: FeaturedListViewItem(),
        ),
        itemCount: 20,
      ),
    );
  }
}

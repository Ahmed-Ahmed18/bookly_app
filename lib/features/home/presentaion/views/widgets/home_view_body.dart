import 'package:booky_app/core/utils/styles.dart';
import 'package:booky_app/features/home/presentaion/views/widgets/best_seller_list_view.dart';
import 'package:booky_app/features/home/presentaion/views/widgets/custom_appbar.dart';
import 'package:booky_app/features/home/presentaion/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: CustomAppbar(),
                ),
                FeaturedListView(),
                SizedBox(height: 45),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text("Best Seller", style: Styles.textStyle18),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          SliverFillRemaining(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: BestSellerListView(),
            ),
          ),
        ],
      ),
    );
  }
}

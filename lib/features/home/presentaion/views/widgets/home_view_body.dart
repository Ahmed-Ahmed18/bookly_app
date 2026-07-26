import 'package:booky_app/core/utils/styles.dart';
import 'package:booky_app/features/home/presentaion/views/widgets/custom_appbar.dart';
import 'package:booky_app/features/home/presentaion/views/widgets/featured_book_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start
        ,children: [CustomAppbar(), FeaturedBookListView(),
        SizedBox(height:45,),
        Text("Best Seller",style: Styles.tittleMedium,),
        ]),
      ),
    );
  }
}

import 'package:booky_app/features/home/presentaion/views/widgets/custom_appbar.dart';
import 'package:booky_app/features/home/presentaion/views/widgets/featured_book_list_view.dart';
import 'package:booky_app/features/home/presentaion/views/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [CustomAppbar(),
    FeaturedBookListView()
    ]));
  }
}

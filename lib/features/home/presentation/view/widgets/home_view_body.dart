import 'package:first/core/utils/assets.dart';
import 'package:first/features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'featured_books_list_view.dart';
import 'featured_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:const [
        CustomAppBar(),
        FeatureBooksListView(),

      ],
    );
  }
}




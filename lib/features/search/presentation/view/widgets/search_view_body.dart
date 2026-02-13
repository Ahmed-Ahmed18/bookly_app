import 'package:first/features/search/presentation/view/widgets/custom_search_text_field.dart';
import 'package:first/features/search/presentation/view/widgets/search_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomSearchTextField(),
          SizedBox(height: 20),
          Text('Search Results', style: Styles.textStyle18),
          SizedBox(height: 20),
          Expanded(child: SearchListView()),
        ],
      ),
    );
  }
}

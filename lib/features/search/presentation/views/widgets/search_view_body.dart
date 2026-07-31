import 'package:booky_app/core/utils/styles.dart';
import 'package:booky_app/features/search/presentation/views/widgets/search_result_listview.dart';
import 'package:booky_app/features/search/presentation/views/widgets/search_text_field.dart';
import 'package:flutter/cupertino.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchTextField(),
          const SizedBox(height: 20),
          Text('Search Result', style: Styles.textStyle18),
          const SizedBox(height: 20),
          Expanded(child: SearchResultListview()),
        ],
      ),
    );
  }
}

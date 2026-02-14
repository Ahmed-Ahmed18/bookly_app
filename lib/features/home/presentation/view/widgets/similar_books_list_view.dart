import 'package:flutter/cupertino.dart';

import 'custom_book_image.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .14,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: const CustomBookImage(),
        ),
      ),
    );
  }
}

import 'package:booky_app/features/home/presentaion/views/widgets/custom_book_details_app_bar.dart';
import 'package:booky_app/features/home/presentaion/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            CustomBookDetailsAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * .25),
              child: CustomBookImage(),
            ),
          ],
        ),
      ),
    );
  }
}

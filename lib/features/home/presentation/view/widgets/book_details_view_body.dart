import 'package:first/core/utils/styles.dart';
import 'package:first/features/home/presentation/view/widgets/custom_book_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width =MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
        const CustomBookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .17 ),
          child: CustomBookImage(),
        ),SizedBox(height: 42,),
          Text('Star Wars Return of the Jedi',
            style: Styles.textStyle30.copyWith(
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),),
          SizedBox(height: 13,),
          Opacity(
               opacity: .7,
              child: Text('J.K. Rowling',
              style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
            ),),
          )
      ],),
    );
  }
}


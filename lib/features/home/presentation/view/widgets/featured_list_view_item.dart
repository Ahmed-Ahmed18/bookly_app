import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/assets.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8/4,
      child: Container(
        width:50 ,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(image: AssetImage(AssetsData.testImag))
        ),
      ),
    );
  }
}
import 'package:first/core/utils/app_router.dart';
import 'package:first/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/assets.dart';
import 'book_rating.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.KBookDetailsView);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5/4,
              child: Container(
                width:50 ,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage(AssetsData.testImag)),
                ),
              ),
            ),
            const SizedBox(width: 30,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text('Star Wars Return of the Jedi',
                      style:Styles.textStyle20 ,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 3,),
                  Text('J.K. Rowling',
                    style:Styles.textStyle14.copyWith(
                      color: Color(0xff979797)
                    ) ,),
                  const SizedBox(height: 3,),
                  Row(
                    children: [
                      Text('19.99 €',
                          style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold
                      ),),
                      Spacer(),
                      BookRating()
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


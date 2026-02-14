import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  final mainAxisAlignment;
  const BookRating({super.key,this.mainAxisAlignment=MainAxisAlignment.start});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(FontAwesomeIcons.solidStar,
            color:Color(0xffFFDD4F)),
        const SizedBox(width: 6.3,),
        Text('4.8',
          style: Styles.textStyle16,),
        const SizedBox(width: 6),
        Opacity(
          opacity: .5,
          child: Text('(2390)',
           ),
        )
      ],
    );
  }
}
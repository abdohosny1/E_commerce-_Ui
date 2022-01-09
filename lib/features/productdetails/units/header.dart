import 'package:e_commerce/const/colors.dart';
import 'package:e_commerce/cort/router/router.dart';
import 'package:flutter/material.dart';

class HeaderProductDeatuls extends StatelessWidget {
  const HeaderProductDeatuls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: ()=>MagicRouter.pop(),
                icon: Icon(Icons.arrow_back_ios,color: kBlackColors,)),
            IconButton(
                onPressed: (){},
                icon: Icon(Icons.favorite_border,color: kBlackColors,)),
          ],
        )
      ],
    );
  }
}

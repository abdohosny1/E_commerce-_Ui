import 'package:e_commerce/const/colors.dart';
import 'package:e_commerce/cort/router/router.dart';
import 'package:flutter/material.dart';

class HedingArrow extends StatelessWidget {
   HedingArrow({Key? key, this.txet}) : super(key: key);
  String? txet;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            IconButton(onPressed: ()=>MagicRouter.pop(),
                icon: Icon(Icons.arrow_back_ios)),
            Text(txet!,
              style: TextStyle(
                  color: kTextColors,fontSize: 17
              ),)

          ],
        ),
      ],
    );
  }
}

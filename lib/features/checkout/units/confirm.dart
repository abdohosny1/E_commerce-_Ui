import 'package:e_commerce/const/colors.dart';
import 'package:e_commerce/cort/router/router.dart';
import 'package:e_commerce/features/scussesmsg/view.dart';
import 'package:e_commerce/widget/buttonWithIcon.dart';
import 'package:flutter/material.dart';

class ConfirmCheckout extends StatelessWidget {
  const ConfirmCheckout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("TOTAL AMOUNT",style: TextStyle(
                    color: kTextColors,fontSize: 19
                ),),
                SizedBox(height: 5,),
                Text("\$145353",style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 17
                ),),
                SizedBox(height: 30,),
              ],
            ),
            ButtonWithIconWidget(

              text: "Place Holder",
              ontap: ()=>MagicRouter.navigateTo(ScussesMsg()),
              icon: Icons.arrow_forward,
            ),
          ],
        )
      ],
    );
  }
}

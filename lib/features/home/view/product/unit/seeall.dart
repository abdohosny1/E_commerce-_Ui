import 'package:e_commerce/const/colors.dart';
import 'package:e_commerce/widget/textButtonWidget.dart';
import 'package:flutter/material.dart';

class SeeAllText extends StatelessWidget {
   SeeAllText({Key? key,this.text,this.ontap}) : super(key: key);
  void Function()? ontap;
  String? text;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text!,style: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 16
        ),),
        TextButtonWidget(
          text: 'See All',
          ontap: ontap,
          textcolor: kPrimaryColors,
        )
      ],
    );
  }
}

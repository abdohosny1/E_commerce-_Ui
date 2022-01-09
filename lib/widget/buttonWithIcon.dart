import 'package:e_commerce/const/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWithIconWidget extends StatelessWidget {
   ButtonWithIconWidget(
       {Key? key,
         this.text,
         this.ontap,
         this.icon
       }) : super(key: key);
   String? text;
  void Function()? ontap;
  IconData? icon;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: kPrimaryColors
      ),
      child: InkWell(
        onTap: ontap,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(text!,style: TextStyle(
                color: kWhiteColors,fontWeight: FontWeight.bold
            ),),
            SizedBox(width: 10,),
            Icon(icon,color: kWhiteColors,)
          ],

        ),
      ),
    );
  }
}

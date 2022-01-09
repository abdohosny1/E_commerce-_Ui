import 'package:e_commerce/const/colors.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {

   void Function()? ontap;
   final String? txet;
   final Color? backgroundColor;
   final Color? textColor;


   ButtonWidget({
     required this.ontap,
     this.txet,
     this.backgroundColor,
     this.textColor
   });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: ontap,
       child: Text(txet!,style: TextStyle(color: textColor),),
      minWidth: MediaQuery.of(context).size.width-150,
      height: 50,
      color: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),

    );
  }
}

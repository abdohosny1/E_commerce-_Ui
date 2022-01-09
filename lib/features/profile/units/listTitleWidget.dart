import 'package:e_commerce/const/colors.dart';
import 'package:flutter/material.dart';
class ListTitleWidget extends StatelessWidget {
   ListTitleWidget({Key? key,
    this.icon,
    this.ontap,
    this.text,
    this.trailing
  }) : super(key: key);
  void Function()? ontap;
  String? text;
  IconData? icon;
  String? trailing;
  @override
  Widget build(BuildContext context) {
    return  ListTile(
      onTap: (){},
      leading: Icon(icon,color: kIconColors),
      title: Text(text!,style: TextStyle(
          fontSize: 15
      ),),
      trailing: Text(trailing!,style: TextStyle(
          color: kIconColors,fontWeight: FontWeight.w600
      ),),
    );
  }
}

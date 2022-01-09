import 'package:flutter/material.dart';

class BulidMassage extends StatelessWidget {
 late String text;
   BulidMassage({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: AlignmentDirectional.centerEnd,
      child: Container(

        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(.5),
            borderRadius: BorderRadiusDirectional.only(
              bottomStart: Radius.circular(10),
              topEnd: Radius.circular(10),
              topStart: Radius.circular(10),
            )),
        child: Text(text),
      ),
    );
  }
}

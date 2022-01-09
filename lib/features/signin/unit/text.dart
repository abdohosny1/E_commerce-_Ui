import 'package:e_commerce/const/colors.dart';
import 'package:flutter/material.dart';

class TextSignIN extends StatelessWidget {
   TextSignIN({Key? key,this.text}) : super(key: key);
  final String? text;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
            flex: 1,
            child: Divider(
              thickness: 2,
              indent: 20,
              endIndent: 40,
              height: 10,
              color: Colors.black26,
            )),
        Text(text!,style: TextStyle(
            color: kPrimaryColors,fontWeight: FontWeight.bold,
            fontSize: 15
        ),),
        Expanded(
          flex: 1,
          child: Divider(
            thickness: 2,
            indent: 40,
            endIndent: 20,
            height: 10,
            color: Colors.black26,
          ),
        )
      ],
    );
  }
}

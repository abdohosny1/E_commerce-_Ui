import 'package:e_commerce/const/colors.dart';
import 'package:flutter/material.dart';

class TextWelcome extends StatelessWidget {
  const TextWelcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Hello Abdo',style: TextStyle(
            color: kWhiteColors,fontSize: 33,fontWeight: FontWeight.bold
        ),),
        SizedBox(height: 10,),
        Text('Welcom To Ramni',style: TextStyle(
            color: kWhiteColors,fontSize: 20
        ),),
      ],
    );
  }
}

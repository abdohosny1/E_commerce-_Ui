import 'package:e_commerce/const/colors.dart';
import 'package:flutter/material.dart';

class RateText extends StatelessWidget {
  const RateText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("Pokee Chair",style: TextStyle(
                fontSize: 17,fontWeight: FontWeight.w400
            ),),
            SizedBox(width: 20,),
            Text("☆",style:
            TextStyle(color: kPrimaryColors,fontSize: 18),),
            Text("3.5",style: TextStyle(fontSize: 17),),
            Spacer(),
            Text("\$17432",style: TextStyle(
                color: kPrimaryColors,fontSize: 17,fontWeight: FontWeight.bold
            ),),
          ],
        )
      ],
    );
  }
}

import 'package:e_commerce/const/colors.dart';
import 'package:e_commerce/cort/router/router.dart';
import 'package:flutter/material.dart';

class BarWidget extends StatelessWidget {
  const BarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
            onPressed: () {
              MagicRouter.pop();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: kWhiteColors,
            )),
        SizedBox(width: 100,),

        Center(
          child: Image.asset(
            'assets/images/trademark.png',
            width: 60,

           // color: kWhiteColors,
          ),
        ),
      ],
    );
  }
}

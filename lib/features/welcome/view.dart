import 'package:e_commerce/const/colors.dart';
import 'package:e_commerce/features/welcome/unit/circulAvatr.dart';
import 'package:e_commerce/features/welcome/unit/confirmWelcome.dart';
import 'package:e_commerce/features/welcome/unit/text.dart';
import 'package:e_commerce/widget/button_widget.dart';
import 'package:e_commerce/widget/textButtonWidget.dart';
import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColors,
      body: Center(
        child: Column(
         // crossAxisAlignment: CrossAxisAlignment.center,
         // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 100,),
            TextWelcome(),
             SizedBox(height: 100,),
            CirculrAvaterWidget(),
            SizedBox(height: 10,),
            CongirmWelcome(),




          ],
        ),
      ),
    );
  }
}

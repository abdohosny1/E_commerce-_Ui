
import 'dart:async';

import 'package:e_commerce/const/colors.dart';
import 'package:e_commerce/cort/router/router.dart';
import 'package:e_commerce/features/signin/view.dart';
import 'package:e_commerce/widget/button_widget.dart';
import 'package:e_commerce/widget/textButtonWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplachView extends StatefulWidget {
   SplachView({Key? key}) : super(key: key);

  @override
  State<SplachView> createState() => _SplachViewState();
}

class _SplachViewState extends State<SplachView> {
  @override
  void initState() {
    // Timer(Duration(seconds: 3),
    //     ()=>MagicRouter.navigateTo(RegisterView()));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColors,
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image:AssetImage('assets/images/background.jpeg'),
                fit: BoxFit.fitWidth
            )
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 600,),

            ButtonWidget(
              ontap: (){},
              txet: 'GET STARTED',
              backgroundColor: kWhiteColors,
              textColor: kPrimaryColors,
            ),
            SizedBox(height: 10,),
            TextButtonWidget(
              text: 'SIGN IN',
              textcolor: kWhiteColors,
              ontap: (){
                MagicRouter.navigateTo(SigninView());
              },
            ),

          ],
        ),

      ),
    );
  }
}

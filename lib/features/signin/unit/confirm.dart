import 'package:e_commerce/const/colors.dart';
import 'package:e_commerce/cort/router/router.dart';
import 'package:e_commerce/features/home/view.dart';
import 'package:e_commerce/features/menua/view.dart';
import 'package:e_commerce/features/verify/view.dart';
import 'package:e_commerce/widget/button_widget.dart';
import 'package:e_commerce/widget/textButtonWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
class ConfirmSignIn extends StatelessWidget {
   ConfirmSignIn({Key? key}) : super(key: key);
   late final ZoomDrawerController zoomDrawerController;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ButtonWidget(
          ontap: (){
            MagicRouter.navigateTo(MenuaScreen());
          },
          txet: 'SIGN IN',
          backgroundColor: kPrimaryColors,
          textColor: kWhiteColors,
        ),
        SizedBox(height: 10,),
        TextButtonWidget(
          text: 'Forgot Password ?',
          textcolor: Colors.blueGrey,
          ontap: (){
            MagicRouter.navigateTo(VerifyView());

          },
        ),
      ],
    );
  }
}

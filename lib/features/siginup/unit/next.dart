import 'package:e_commerce/const/colors.dart';
import 'package:e_commerce/cort/router/router.dart';
import 'package:e_commerce/features/welcome/view.dart';
import 'package:e_commerce/widget/button_widget.dart';
import 'package:flutter/material.dart';

class Next extends StatelessWidget {
  const Next({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonWidget(
      ontap: (){
        MagicRouter.navigateTo(WelcomeView());
      },
      txet: 'NEXT',
      backgroundColor: kPrimaryColors,
      textColor: kWhiteColors,

    );
  }
}

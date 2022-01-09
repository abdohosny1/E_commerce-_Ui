import 'package:e_commerce/const/colors.dart';
import 'package:e_commerce/widget/button_widget.dart';
import 'package:flutter/material.dart';

class VerifyButton extends StatelessWidget {
  const VerifyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   ButtonWidget(
      ontap: (){},
      txet: 'Verify OTP',
      backgroundColor: kPrimaryColors,
      textColor: kWhiteColors,
    );
  }
}

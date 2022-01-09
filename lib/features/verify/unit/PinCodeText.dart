import 'package:e_commerce/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeText extends StatelessWidget {
  const PinCodeText({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  PinCodeTextField(
      keyboardType: TextInputType.number,
      enablePinAutofill: true,
      length: 4,
      obscureText: false,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        borderRadius: BorderRadius.circular(10),
        inactiveColor: Colors.black26,
        inactiveFillColor: Colors.red,
        selectedColor: Colors.blue,
        fieldHeight: 60,
        fieldWidth: 50,
        shape: PinCodeFieldShape.box,
        activeFillColor: kWhiteColors,
        activeColor: kPrimaryColors,

      ),
      boxShadows: [
        BoxShadow(
          // offset: Offset(0, 1),
            color: Colors.white,
            spreadRadius: 2
          // blurRadius: 10,
        )
      ],
      onCompleted: (v) {
        print("Completed");
      },
      appContext: context,
      onChanged: (String value) {},
    );
  }
}

import 'package:e_commerce/cort/validator/validitor.dart';
import 'package:e_commerce/widget/continerWithTextFiled.dart';
import 'package:flutter/material.dart';

class DebitCard extends StatelessWidget {
  const DebitCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 10,),
          ContinerTextFiled(
              enable: false,
              fortext: "Name on Card",
            hint: "abdo_hosny",
            validator: Validator.userName,
          ),
          SizedBox(height: 10,),
          ContinerTextFiled(
            enable: false,
            fortext: "Card Number",
            hint: "9988978767867",
            validator: Validator.userName,
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(

                child: ContinerTextFiled(
                  enable: false,
                  fortext: "Exp date",
                  hint: "1/4/2022",
                  validator: Validator.userName,
                ),
              ),
              SizedBox(width: 10,),
              Expanded(
                child: ContinerTextFiled(
                  enable: false,
                  fortext: "Exp date",
                  hint: "1/4/2022",
                  validator: Validator.userName,
                ),
              ),

            ],
          )
        ],
      ),
    );
  }
}

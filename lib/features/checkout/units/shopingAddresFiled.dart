import 'package:e_commerce/cort/validator/validitor.dart';
import 'package:e_commerce/widget/continerWithTextFiled.dart';
import 'package:flutter/material.dart';

class ShoppingAddresFiled extends StatelessWidget {
  const ShoppingAddresFiled({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
      margin: EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ContinerTextFiled(
              enable: false,
               fortext: "Name",
                hint:"Aboo hosny",
            validator: Validator.userName,

          ),
          SizedBox(height: 10,),
          ContinerTextFiled(
            enable: false,
            fortext: "Address",
            hint:"Elmansour -ElDayghlia",
            validator: Validator.userName,

          ),
          SizedBox(height: 10,),
          ContinerTextFiled(
            enable: false,
            fortext: "Pincode",
            hint:"5307",
            validator: Validator.userName,

          ),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}

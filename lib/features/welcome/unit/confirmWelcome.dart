import 'package:e_commerce/const/colors.dart';
import 'package:e_commerce/widget/button_widget.dart';
import 'package:e_commerce/widget/textButtonWidget.dart';
import 'package:flutter/material.dart';

class CongirmWelcome extends StatelessWidget {
  const CongirmWelcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MaterialButton(
          child: Text('Change Profile Picture'),
          onPressed: (){},
          color: kWhiteColors,
          textColor: kPrimaryColors,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))
          ),



        ),
        SizedBox(height: 100,),
        ButtonWidget(
          ontap: (){},
          txet: 'UPLOAD PICTURE',
          textColor: kPrimaryColors,
          backgroundColor: kWhiteColors,
        ),
        SizedBox(height: 10,),
        TextButtonWidget(
          ontap: (){},
          text: 'SKIP',
          textcolor:kWhiteColors ,
        )
      ],
    );
  }
}

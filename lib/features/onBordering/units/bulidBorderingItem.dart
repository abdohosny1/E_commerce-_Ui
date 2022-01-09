import 'package:e_commerce/const/colors.dart';
import 'package:e_commerce/cort/router/router.dart';
import 'package:e_commerce/features/siginup/view.dart';
import 'package:e_commerce/features/signin/view.dart';
import 'package:e_commerce/model/borderModel.dart';
import 'package:e_commerce/widget/button_widget.dart';
import 'package:e_commerce/widget/textButtonWidget.dart';
import 'package:flutter/material.dart';

class BulidBorderingItem extends StatelessWidget {
   BulidBorderingItem({Key? key,required this.model}) : super(key: key);

 late BorderingModel model;

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: kPrimaryColors,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          SizedBox(height: 40,),

          Expanded(
            child: Container(
              child: Image(
                image:AssetImage('${model.image}') ,
                fit: BoxFit.contain,
               width: 200,


               // color: kWhiteColors,



              ),
            ),
          ),
          SizedBox(height: 30,),
          ButtonWidget(
              ontap:(){
                MagicRouter.navigateTo(SignUPView());
              },
               txet: 'GET SRARTED',
               backgroundColor: kWhiteColors,
               textColor:kPrimaryColors ,
              ),

          SizedBox(height: 10,),
          TextButtonWidget(
            ontap: (){
              MagicRouter.navigateTo(SigninView());
            },
            text: 'SIGN IN',
            textcolor: kWhiteColors,

          ),



        ],),
    );
  }
}

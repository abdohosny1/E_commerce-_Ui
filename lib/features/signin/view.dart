
import 'package:e_commerce/const/colors.dart';
import 'package:e_commerce/cort/validator/validitor.dart';
import 'package:e_commerce/widget/continerWithTextFiled.dart';
import 'package:e_commerce/widget/divider_text_widget.dart';
import 'package:e_commerce/widget/continer_widget.dart';
import 'package:e_commerce/cort/router/router.dart';
import 'package:e_commerce/features/menua/view.dart';
import 'package:e_commerce/features/verify/view.dart';
import 'package:e_commerce/widget/button_widget.dart';
import 'package:e_commerce/widget/textButtonWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit.dart';
import 'package:e_commerce/features/signin/cubit.dart';



part 'unit/signin_button_confirm.dart';
part 'unit/signin_image_filed.dart';
part 'unit/signin_fields.dart';

class SigninView extends StatelessWidget {
  const SigninView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context)=>RegisterCubit(),
        child:  Scaffold(
          backgroundColor: kPrimaryColors,
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 100.0,top:100),
                child: ImageFiled(),
              ),
              ContinerWidget(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20,top: 10),
                  child: SingleChildScrollView(
                    child: Column
                      (
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 20,),
                        TextSignIN(text: 'SIGN IN',),
                        SizedBox(height: 50,),

                        SignInFields(),
                        SizedBox(height: 40,),
                        ConfirmSignIn(),





                      ],
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
    );
  }
}

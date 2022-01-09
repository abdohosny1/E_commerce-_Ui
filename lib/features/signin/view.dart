
import 'package:e_commerce/const/colors.dart';
import 'package:e_commerce/cort/validator/validitor.dart';
import 'package:e_commerce/features/signin/unit/confirm.dart';
import 'package:e_commerce/features/signin/unit/fields.dart';
import 'package:e_commerce/features/signin/unit/image_filed.dart';
import 'package:e_commerce/features/signin/unit/text.dart';

import 'package:e_commerce/widget/continer_widget.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit.dart';

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
              SizedBox(height: 100,),
              ImageFiled(),
              SizedBox(height: 100,),
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

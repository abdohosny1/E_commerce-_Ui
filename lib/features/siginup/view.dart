import 'package:e_commerce/const/colors.dart';
import 'package:e_commerce/features/siginup/cubit.dart';
import 'package:e_commerce/features/siginup/unit/barwidget.dart';
import 'package:e_commerce/features/siginup/unit/fileds.dart';
import 'package:e_commerce/features/siginup/unit/next.dart';
import 'package:e_commerce/features/signin/unit/text.dart';
import 'package:e_commerce/widget/continer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUPView extends StatelessWidget {
  const SignUPView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context)=>SignUpCubit(),
      child: Scaffold(
        backgroundColor: kPrimaryColors,
        body: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            BarWidget(),
            SizedBox(height: 40,),
            ContinerWidget(
              child: Padding(
                padding: EdgeInsets.only(top: 10,left: 20,right: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      TextSignIN(text: 'SIGN UP',),
                      SizedBox(height: 30,),
                      FieldsSignUp(),
                      SizedBox(height: 15,),
                      Next(),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

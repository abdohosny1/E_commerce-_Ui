import 'package:e_commerce/const/colors.dart';
import 'package:e_commerce/features/signup/cubit.dart';
import 'package:e_commerce/widget/divider_text_widget.dart';
import 'package:e_commerce/features/welcome/view.dart';
import 'package:e_commerce/widget/button_widget.dart';
import 'package:e_commerce/widget/continer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:e_commerce/cort/router/router.dart';
import 'package:e_commerce/cort/validator/validitor.dart';
import 'package:e_commerce/widget/continerWithTextFiled.dart';



part 'unit/signup_bar_widget.dart';
part 'unit/signup_fileds.dart';
part 'unit/signup_button_next.dart';


class SignUPView extends StatelessWidget {
  const SignUPView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context)=>SignUpCubit(),
      child: Scaffold(
        backgroundColor: kPrimaryColors,
        body: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Column(
            children: [

              BarWidget(),
              SizedBox(height: 20,),
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
      ),
    );
  }
}

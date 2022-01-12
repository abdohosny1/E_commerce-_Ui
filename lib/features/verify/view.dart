import 'package:e_commerce/const/colors.dart';
import 'package:e_commerce/cort/router/router.dart';
import 'package:e_commerce/features/signin/view.dart';
import 'package:e_commerce/features/verify/cubit.dart';
import 'package:e_commerce/widget/button_widget.dart';
import 'package:e_commerce/widget/continer_widget.dart';
import 'package:e_commerce/widget/textButtonWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_code_fields/pin_code_fields.dart';



part 'unit/otp_PinCodeText.dart';
part 'unit/otp_button.dart';
part 'unit/otp_tetx_tap.dart';
part 'unit/otp_resend.dart';

class VerifyView extends StatelessWidget {
  const VerifyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
        create: (context)=>VerifyCubit()..startTimer(),
      child: Scaffold(
        backgroundColor: kPrimaryColors,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            IconButton(onPressed: (){
              MagicRouter.pop();
            },
                icon: Icon(Icons.arrow_back_ios,color: kWhiteColors,)),
            SizedBox(height: 60,),

            ImageFiled(),
            SizedBox(height: 100,),
            ContinerWidget(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      TextTab(),
                      SizedBox(height: 30,),
                     PinCodeText(),
                      SizedBox(height: 40,),
                     VerifyButton(),
                      SizedBox(height: 10,),
                      VerifyResend()
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

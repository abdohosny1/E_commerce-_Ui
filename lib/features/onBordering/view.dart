import 'package:e_commerce/const/colors.dart';
import 'package:e_commerce/features/onBordering/cubit.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/features/onBordering/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:e_commerce/features/onBordering/units/onborder_list.dart';
import 'package:e_commerce/features/onBordering/units/onborder_pageview.dart';




part 'units/onborder_skip_button.dart';
part 'units/onborder_floataction.dart';

class OnBorderingView extends StatelessWidget {
   OnBorderingView({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
        create: (context)=>OnBorderCubit(),
      child: Scaffold(
        backgroundColor: kPrimaryColors,

        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              SkipButton(),
              PageViewDesgin(list: list,),
              SizedBox(height: 10,),
              // Row(
              //   children: [
              //
              //     // SmoothPageDesgin(
              //     //   controller: OnBorderCubit.get(context).borderConteler,
              //     //   list: list,
              //     //   colors: kWhiteColors,
              //     //   hight: 10,
              //     //   expansio: 4,
              //     //   width: 10,
              //     // ),
              //
              //
              //     // Spacer(),
              //     // FloatAction()
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:e_commerce/const/colors.dart';
import 'package:e_commerce/features/onBordering/cubit.dart';
import 'package:e_commerce/features/onBordering/units/SmoothPage.dart';
import 'package:e_commerce/features/onBordering/units/floataction.dart';
import 'package:e_commerce/features/onBordering/units/list.dart';
import 'package:e_commerce/features/onBordering/units/pageview.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBorderingView extends StatelessWidget {
   OnBorderingView({Key? key}) : super(key: key);
  var borderConteler=PageController();


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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: (){
                        // submit();
                      },
                      child: Text(
                        'SKIP',style: TextStyle(color:kWhiteColors,fontSize: 20,fontWeight: FontWeight.w600),)),
                ],
              ),
              PageViewDesgin(controller: borderConteler,list: list,),
              SizedBox(height: 10,),
              Row(
                children: [

                  SmoothPageDesgin(
                    controller: borderConteler,
                    list: list,
                    colors: kWhiteColors,
                    hight: 10,
                    expansio: 4,
                    width: 10,
                  ),


                  Spacer(),
                  FloatAction(
                    controller: borderConteler,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:e_commerce/const/colors.dart';
import 'package:e_commerce/features/onBordering/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FloatAction extends StatelessWidget {
  const FloatAction({Key? key,this.controller}) : super(key: key);
  final PageController? controller;
  @override
  Widget build(BuildContext context) {
    var cubit=OnBorderCubit.get(context);
    return FloatingActionButton(
      backgroundColor: kPrimaryColors,
      onPressed: (){
        if(cubit.isLast){
          cubit.submit();
        }else{
          controller!.nextPage(
              duration: Duration(milliseconds: 750),
              curve: Curves.fastLinearToSlowEaseIn);
        }

      },
      child: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 30,),
    );
  }
}

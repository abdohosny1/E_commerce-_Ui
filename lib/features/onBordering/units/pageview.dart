import 'package:e_commerce/features/onBordering/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bulidBorderingItem.dart';


class PageViewDesgin extends StatelessWidget {
   PageViewDesgin({Key? key,this.controller,this.list}) : super(key: key);
   final PageController? controller;
    List<dynamic>? list;
  @override
  Widget build(BuildContext context) {
    var cubit=OnBorderCubit.get(context);
    return  Expanded(
      child: BlocBuilder(
        bloc: cubit,
        builder: (context,state){
          return PageView.builder(
            onPageChanged: (int index){
              if(index==list!.length-1){
               cubit.changeVisibility();

              }else{
               cubit.changeVisibility();
              }
            },
            controller: controller,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context,index) =>BulidBorderingItem(
                model:list![index]),
            itemCount: list!.length,
          );
        },
      ),
    );
  }
}

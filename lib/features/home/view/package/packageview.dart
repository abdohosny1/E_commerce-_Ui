import 'package:e_commerce/const/colors.dart';
import 'package:e_commerce/features/home/cubit.dart';
import 'package:e_commerce/features/home/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PackageView extends StatelessWidget {
  const PackageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit,HomeState>(
      builder: (context,state){
        return Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(

            color: kWhiteColors,
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30)),

          ),
          child: Center(child: Text('Package View')),
        );
      },

    );
  }
}

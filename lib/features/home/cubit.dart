import 'package:bloc/bloc.dart';
import 'package:e_commerce/features/home/state.dart';
import 'package:e_commerce/features/home/view/package/packageview.dart';
import 'package:e_commerce/features/home/view/person/personview.dart';
import 'package:e_commerce/features/home/view/product/productview.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class HomeCubit extends Cubit<HomeState>{
  HomeCubit( ) : super(HomeInit());

  static HomeCubit get(context)=>BlocProvider.of(context);



  bool ischange=false;


  bool changeCategories(bool change){

     ischange=change;
     emit(HomeChangFilter());
     return  change;



  }


  List <Widget> screen=[
    PackageView(),
   ShowProduct(),
    PersonMiew()
  ];
  int curent=1;
   changeBottom(v){
     curent=v;
     emit(HomeChangeBottom());
   }

}
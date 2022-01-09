import 'package:bloc/bloc.dart';
import 'package:e_commerce/features/signin/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubit extends Cubit<RegisterState>{
  RegisterCubit() : super(RegisterInit());

  static RegisterCubit get(context)=>BlocProvider.of(context);

  bool isloading=false;

  void changeVisibility(){
    isloading=!isloading;
    emit(ChangeVisibility());
  }

}
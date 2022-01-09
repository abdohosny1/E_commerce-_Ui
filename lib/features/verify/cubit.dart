import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:e_commerce/features/verify/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerifyCubit extends Cubit<VerifyState>{
  VerifyCubit( ) : super(VerifyInit());
  static VerifyCubit get(context)=>BlocProvider.of(context);

  Timer? _timer;
 late int count;

 void startTimer(){
   count=10;
   emit(VerifyStartTimer());
   _timer=Timer.periodic(
       Duration(seconds: 1),
           (timer) {
          if(count==0){
            _timer!.cancel();
            emit(VerifyStartTimer());
          }else{
            count--;
            emit(VerifyStartTimer());
          }
           });
 }

 @override
  Future<void> close() {
   if(_timer!=null){
     _timer!.cancel();
   }
    return super.close();
  }


}
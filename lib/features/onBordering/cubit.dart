import 'package:bloc/bloc.dart';
import 'package:e_commerce/cort/router/router.dart';
import 'package:e_commerce/features/onBordering/state.dart';
import 'package:e_commerce/features/signin/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBorderCubit extends Cubit<OnBorderStae>{
  OnBorderCubit() : super(OnBorderInit());

  static OnBorderCubit get(context)=>BlocProvider.of(context);

  var borderConteler=PageController();


  bool isLast=false;

  void changeVisibility(){
    isLast=!isLast;
    emit(OnBorderChange());
  }


void submit(){
  // CashHelper.saveData(key: 'OnBoredering', value: true).then((value) {
  //   if(value){
  //     Navigator.of(context).pushAndRemoveUntil(
  //         MaterialPageRoute(builder: (e)=>MainScreen(app:widget.app)),(r)=>false);
  //
  //   }
  // });
  MagicRouter.navigateTo(SigninView());
}

@override
  Future<void> close() {
    // TODO: implement close
  borderConteler.dispose();
    return super.close();
  }

}
import 'package:bloc/bloc.dart';
import 'package:e_commerce/features/productdetails/state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDeatilsCubit extends Cubit<ProductDeatilsState>{
  ProductDeatilsCubit() : super(ProductDeatilsInit());

  static ProductDeatilsCubit get(context)=>BlocProvider.of(context);

  var borderConteler=PageController();

  bool isLast=false;

  void changeImage(){
    isLast=!isLast;
    emit(ProductDeatilsChange());
  }
  int cout=1;

  void changCountIncrease(){
    cout++;
    emit(ProductDeatilsCount());
  }
  void changCountDes(){
    cout--;
    emit(ProductDeatilsCount());
  }

  @override
  Future<void> close() {
    // TODO: implement close
    borderConteler.dispose();
    return super.close();
  }


}
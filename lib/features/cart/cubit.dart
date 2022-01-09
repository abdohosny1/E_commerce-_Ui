import 'package:bloc/bloc.dart';
import 'package:e_commerce/features/cart/state.dart';
import 'package:e_commerce/features/productdetails/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartCubit extends Cubit<CartState>{
  CartCubit() : super(CartInit());

  static CartCubit get(context)=>BlocProvider.of(context);


  int cout=1;

  void changCountIncrease(){
    cout++;
    emit(CartCount());
  }
  void changCountDes(){
    cout--;
    emit(CartCount());
  }


}
import 'package:e_commerce/const/colors.dart';
import 'package:e_commerce/features/cart/cubit.dart';
import 'package:e_commerce/features/cart/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemListCart extends StatelessWidget {
  const ItemListCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit=CartCubit.get(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
              color:kBackgroundColor,
              child: Image.asset('assets/images/image.png')),
          SizedBox(width: 15,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Ramina Chair",style: TextStyle(
                  fontSize: 17,fontWeight: FontWeight.w500
              ),),
              Text("\$1245",style: TextStyle(
                  color: kTextColors,fontSize: 15
              ),),
              BlocBuilder<CartCubit,CartState>(
                  builder: (context,state){
                    return  Row(
                      mainAxisAlignment: MainAxisAlignment.start,

                      children: [
                        IconButton(
                            onPressed: (){
                              cubit.changCountDes();
                            },
                            icon: Icon(Icons.remove_circle_outline,color: kTextColors,size: 25,)),
                        Text(cubit.cout.toString(),style: TextStyle(
                            color: kBlackColors,fontSize: 18
                        ),),
                        IconButton(
                            onPressed: (){
                              cubit.changCountIncrease();
                            },
                            icon: Icon(Icons.add_circle_outline,color: kTextColors,size: 25,)),
                      ],
                    );
                  }
              )

            ],
          )

        ],
      ),
    );
  }
}

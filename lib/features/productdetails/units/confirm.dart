import 'package:e_commerce/const/colors.dart';
import 'package:e_commerce/features/productdetails/cubit.dart';
import 'package:e_commerce/features/productdetails/state.dart';
import 'package:e_commerce/widget/buttonWithIcon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConfirmDetils extends StatelessWidget {
  const ConfirmDetils({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BlocBuilder<ProductDeatilsCubit,ProductDeatilsState>(
              builder: (context,state){
                 var cubit=ProductDeatilsCubit.get(context);
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: kPrimaryColors
                  ),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: (){
                            cubit.changCountDes();
                          },
                          icon: Icon(Icons.remove_circle_outline,color: kWhiteColors,)),
                      Text(cubit.cout.toString(),style: TextStyle(color: kWhiteColors,fontSize: 15),),
                      IconButton(
                          onPressed: (){
                            cubit.changCountIncrease();
                          },
                          icon: Icon(Icons.add_circle_outline,color: kWhiteColors,)),
                    ],
                  ),
                );
              },
            ),

            ButtonWithIconWidget(
              text: "ADD TO CART",
              ontap: (){},
              icon: Icons.add_shopping_cart,
            ),
          ],
        ),

        SizedBox(height: 20,),
      ],
    );
  }
}

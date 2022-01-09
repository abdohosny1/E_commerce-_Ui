import 'package:e_commerce/const/colors.dart';
import 'package:e_commerce/cort/router/router.dart';
import 'package:e_commerce/features/cart/cubit.dart';
import 'package:e_commerce/features/cart/unit/Itemlist.dart';
import 'package:e_commerce/features/cart/unit/heading.dart';
import 'package:e_commerce/features/checkout/view.dart';
import 'package:e_commerce/widget/buttonWithIcon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>CartCubit(),
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [

                HedingArrow(txet: "Your Cart",),
                SizedBox(height: 20,),
                Expanded(
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (context,index){
                        return ItemListCart();
                      }
                  ),
                ),
                SizedBox(height: 30,),
                Text("TOTAL AMOUNT",style: TextStyle(
                  color: kTextColors
                ),),
                SizedBox(height: 5,),
                Text("\$145353",style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 20
                ),),
                SizedBox(height: 30,),
                ButtonWithIconWidget(

                  text: "CHECKOUT",
                  ontap: ()=>MagicRouter.navigateTo(CheckOutView()),
                  icon: Icons.arrow_forward,
                ),

              ],

            ),
          ),
        ),
      ),
    );
  }
}

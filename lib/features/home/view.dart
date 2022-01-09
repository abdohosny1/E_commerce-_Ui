import 'package:e_commerce/const/colors.dart';
import 'package:e_commerce/cort/router/router.dart';
import 'package:e_commerce/cort/validator/validitor.dart';
import 'package:e_commerce/features/cart/view.dart';
import 'package:e_commerce/features/home/cubit.dart';
import 'package:e_commerce/features/home/state.dart';
import 'package:e_commerce/features/menua/units/mainView.dart';
import 'package:e_commerce/features/menua/view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class HomeView extends StatelessWidget {
   // HomeView({Key? key,required this.zoomDrawerController}) : super(key: key);
     final ZoomDrawerController zoomDrawerController;
   HomeView(this.zoomDrawerController);
   @override
  Widget build(BuildContext context) {

    return BlocProvider(

      create: (context)=>HomeCubit(),

          child: BlocBuilder<HomeCubit,HomeState>(
            builder: (context,state){
              return Scaffold
                ( appBar: AppBar(
                automaticallyImplyLeading: false,

                backgroundColor: kWhiteColors,
                elevation: 0,

                title:  Row(
                  children: [
                    IconButton(
                        onPressed: ()=>zoomDrawerController.toggle!(),
                        icon: Icon(Icons.menu_open,color: kBlackColors,)),
                    Spacer(),
                    IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.notifications_none,color: kBlackColors,)),
                    IconButton(
                        onPressed: ()=>MagicRouter.navigateTo(CartView()),
                        icon: Icon(Icons.add_shopping_cart,color: kBlackColors,))
                  ],
                ),
              ),
                  backgroundColor: kPrimaryColors,
                  body:  HomeCubit.get(context).screen[HomeCubit.get(context).curent],

                  bottomNavigationBar: BlocBuilder<HomeCubit,HomeState>(
                    builder: (context,state){
                      var cubit=HomeCubit.get(context);
                      return BottomNavigationBar(
                        currentIndex: cubit.curent,
                        backgroundColor: kPrimaryColors,
                        selectedFontSize: 0,
                        type: BottomNavigationBarType.fixed,
                        onTap:(v){
                          cubit.changeBottom(v);
                        },

                        items: [
                          BottomNavigationBarItem(icon: Icon(Icons.backpack_outlined,color: kWhiteColors,),label: ""),
                          BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: kWhiteColors,),label: ""),
                          BottomNavigationBarItem(icon: Icon(Icons.person_outline,color: kWhiteColors,),label: ""),
                        ],

                      );
                    },
                  )
              );
            },
          )
        );
  }
}


import 'package:e_commerce/const/colors.dart';
import 'package:e_commerce/cort/router/router.dart';
import 'package:e_commerce/features/cart/view.dart';
import 'package:e_commerce/features/chat/view.dart';
import 'package:e_commerce/features/menua/units/menua_widget.dart';
import 'package:e_commerce/features/profile/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';




class MainView extends StatelessWidget {
   final ZoomDrawerController zoomDrawerController;
  // final viewModel=MenuaViewModelImp();
  // MainView({required this.zoomDrawerController});
   MainView(this.zoomDrawerController);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColors,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 100,),
                    child: CircleAvatar(
                      maxRadius: 40,
                      backgroundImage: AssetImage('assets/images/welcome.png'),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text("ROKEE",style: TextStyle(
                    color: kWhiteColors,fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 10,),
                  Text("example@yahoo.com",style: TextStyle(
                    color: kWhiteColors
                  ),)
                ],
              ),
            ),
            Divider(
              thickness: 1,
              indent: 40,
              endIndent: 150,
              height: 50,
              color: kWhiteColors,
            ),
           Padding(
             padding: const EdgeInsets.only(left: 20),
             child: Column(
               children: [
                 MenuWidget(
                     menuName: 'Home',
                     callback: (){},
                     icon: Icons.home_outlined),
                 SizedBox(height: 30,),
                 MenuWidget(
                     menuName: 'My Cart',
                     callback: ()=>MagicRouter.navigateTo(CartView()),
                     icon: Icons.shopping_cart_outlined),
                 SizedBox(height: 30,),
                 MenuWidget(
                     menuName: 'Upcoming Order',
                     callback: (){},
                     icon: Icons.upcoming),
                 SizedBox(height: 30,),
                 MenuWidget(
                     menuName: 'Offer Zone',
                     callback: (){},
                     icon: Icons.shopping_cart_outlined),
                 SizedBox(height: 30,),
                 MenuWidget(
                     menuName: 'My Account',
                     callback: ()=>MagicRouter.navigateTo(ProfileView()),
                     icon: Icons.account_circle_outlined),
                 SizedBox(height: 30,),
                 MenuWidget(
                     menuName: 'My Chats',
                     callback: ()=>MagicRouter.navigateTo(ChatView()),
                     icon: Icons.chat_outlined),
                 SizedBox(height: 30,),
                 MenuWidget(
                     menuName: 'Help',
                     callback: (){},
                     icon: Icons.help_outline_rounded),

               ],
             ),
           )


          ],
        ),
      ),

    );
  }
}





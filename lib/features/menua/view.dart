
import 'package:e_commerce/const/colors.dart';
import 'package:e_commerce/features/home/view.dart';
import 'package:e_commerce/features/home/view/product/productview.dart';
import 'package:e_commerce/features/menua/units/mainView.dart';
import 'package:e_commerce/features/menua/units/menua_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';





class MenuaScreen extends StatelessWidget {
  final drawerZoomControler = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: ZoomDrawer(
        mainScreen: HomeView(drawerZoomControler,),
        menuScreen: MainView(drawerZoomControler,),
        borderRadius: 24.0,
        showShadow: true,
        angle: 0.0,
        backgroundColor: Colors.grey[300]!,
        slideWidth: MediaQuery.of(context).size.width*0.65,
        openCurve: Curves.bounceInOut,
        closeCurve: Curves.ease,
        controller: drawerZoomControler,
      ),
    ));
  }
}





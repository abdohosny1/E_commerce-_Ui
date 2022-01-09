import 'package:e_commerce/const/colors.dart';
import 'package:e_commerce/cort/router/router.dart';
import 'package:e_commerce/features/home/view.dart';
import 'package:e_commerce/features/home/view/product/productview.dart';
import 'package:e_commerce/widget/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class ScussesMsg extends StatelessWidget {
  const ScussesMsg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             SizedBox(height: 100,),

            Image.asset("assets/images/scuss.png",
              fit: BoxFit.contain,
            ),
            SizedBox(height: 50,),

            Text("Your Order",style: TextStyle(
              fontWeight: FontWeight.bold,fontSize: 20
            ),),
            SizedBox(height: 10,),
            Text("Has Been Acccepted",style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 20
            )),
            SizedBox(height: 20,),
            Text("Your Item Has been Plased and is on\n"
            " its way to being processed",
              style: TextStyle(fontSize: 15.0,color: Colors.blueGrey),
              textAlign: TextAlign.center,),
            SizedBox(height: 30,),
            ButtonWidget(
                ontap:(){},
                txet: "TRACK ORDER",
                 backgroundColor: kPrimaryColors,
                 textColor: kWhiteColors,

            ),
            TextButton(
                onPressed: ()=>MagicRouter.navigateAndPopAll(HomeView(ZoomDrawerController())),
                child: Text("BACK TO HOME",style: TextStyle(
                  fontSize: 20,color: kPrimaryColors,fontWeight: FontWeight.bold
                ),))

          ],
        ),
      ),
    ));
  }
}

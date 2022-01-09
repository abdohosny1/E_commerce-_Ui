import 'package:e_commerce/const/colors.dart';
import 'package:e_commerce/features/onBordering/units/SmoothPage.dart';
import 'package:e_commerce/features/productdetails/cubit.dart';
import 'package:e_commerce/features/productdetails/tab_bar_viewer/tabbarfour.dart';
import 'package:e_commerce/features/productdetails/tab_bar_viewer/tabbarone.dart';
import 'package:e_commerce/features/productdetails/tab_bar_viewer/tabbarthree.dart';
import 'package:e_commerce/features/productdetails/tab_bar_viewer/tabbartwo.dart';
import 'package:e_commerce/features/productdetails/units/confirm.dart';
import 'package:e_commerce/features/productdetails/units/header.dart';
import 'package:e_commerce/features/productdetails/units/listimage.dart';
import 'package:e_commerce/features/productdetails/units/pageview.dart';
import 'package:e_commerce/features/productdetails/units/ratetext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDeatils extends StatelessWidget {
   ProductDeatils({Key? key}) : super(key: key);
  var borderConteler=PageController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context)=>ProductDeatilsCubit(),
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20),
            child: Column(
              children: [
                SizedBox(height: 25,),
                HeaderProductDeatuls(),

                Container(
                 width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: Column(
                    children: [
                      PageViewImage(
                          controller: borderConteler,
                          list: listImage,
                      ),
                      SmoothPageDesgin(
                        controller: borderConteler,
                        list: listImage,
                        colors: kPrimaryColors,
                        hight: 8,
                        expansio: 3,
                        width: 8,
                      ),


                    ],

                  ),
                ),
                SizedBox(height: 50,),
                RateText(),
                SizedBox(
                  height: 80,
                  child: AppBar(
                    automaticallyImplyLeading: false,
                    backgroundColor: kWhiteColors,
                    elevation: 0,

                    bottom: TabBar(
                      indicatorColor: kPrimaryColors,
                      labelColor: kPrimaryColors,
                      labelStyle: TextStyle(color: kPrimaryColors),
                      unselectedLabelColor:kBlackColors ,
                      padding: EdgeInsets.only(left: 10),

                      tabs: [
                        Tab(text: "Description",),
                        Tab(text: "Review",),
                        Tab(text: "Offers",),
                        Tab(text: "policy",),
                      ],
                    ),
                  ),
                ),
                Expanded(
                    child: TabBarView(
                      children: [
                        TabBarViewOne(),
                        TabBarViewTwo(),
                        TabBarViewThree(),
                        TabBarViewFour(),


                      ],
                    )),
                SizedBox(height: 20,),
                ConfirmDetils()
              ],
            ),
          ),

        ),
      ),
    );
  }
}

import 'package:e_commerce/const/colors.dart';
import 'package:e_commerce/features/productdetails/tab_bar_viewer/tabbarfour.dart';
import 'package:e_commerce/features/productdetails/tab_bar_viewer/tabbarone.dart';
import 'package:e_commerce/features/productdetails/tab_bar_viewer/tabbarthree.dart';
import 'package:e_commerce/features/productdetails/tab_bar_viewer/tabbartwo.dart';
import 'package:flutter/material.dart';

class TabBarDetilsWidget extends StatelessWidget {
  const TabBarDetilsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
      ],
    );
  }
}

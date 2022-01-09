import 'package:e_commerce/const/colors.dart';
import 'package:e_commerce/cort/router/router.dart';
import 'package:e_commerce/features/cart/unit/heading.dart';
import 'package:e_commerce/features/checkout/tabView/credidcard.dart';
import 'package:e_commerce/features/checkout/tabView/debitcard.dart';
import 'package:e_commerce/features/checkout/tabView/netbanking.dart';
import 'package:e_commerce/features/checkout/tabView/upi.dart';
import 'package:e_commerce/features/checkout/units/confirm.dart';
import 'package:e_commerce/features/checkout/units/shopingAddresFiled.dart';
import 'package:e_commerce/features/scussesmsg/view.dart';
import 'package:e_commerce/widget/buttonWithIcon.dart';
import 'package:flutter/material.dart';
class CheckOutView extends StatelessWidget {
  const CheckOutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                HedingArrow(txet: "Checkout",),
                SizedBox(height: 10,),
                Text("SHIPPING ADDRESS",style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 18
                ),),
                SizedBox(height: 5,),
                ShoppingAddresFiled(),

                Text("Payment Method",style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 18
                ),),
               SizedBox(height: 10,),
                SizedBox(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: AppBar(
                      automaticallyImplyLeading: false,
                      backgroundColor: kWhiteColors,
                      toolbarHeight: 0,
                      titleSpacing: 0.00,
                      elevation: 0,

                      bottom: TabBar(
                        indicatorColor: kPrimaryColors,
                        labelColor: kPrimaryColors,
                        labelStyle: TextStyle(color: kPrimaryColors),
                        unselectedLabelColor:kBlackColors ,
                        padding: EdgeInsets.zero,
                        isScrollable: false,
                        enableFeedback: false,



                        tabs: [
                          Tab(text: "Debit",),
                          Tab(text: "Credit",),
                          Tab(text: "UPI",),
                          Tab(text: "Net",),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: TabBarView(
                        physics: BouncingScrollPhysics(),
                        children: [
                          DebitCard(),
                          CreditCard(),
                          Upi(),
                          NetBanking()



                        ],
                      ),
                    )),
                SizedBox(height: 10,),
                ConfirmCheckout(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

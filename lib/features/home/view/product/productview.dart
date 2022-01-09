import 'package:e_commerce/const/colors.dart';
import 'package:e_commerce/cort/router/router.dart';
import 'package:e_commerce/features/home/cubit.dart';
import 'package:e_commerce/features/home/state.dart';
import 'package:e_commerce/features/home/view/product/filter.dart';
import 'package:e_commerce/features/home/view/product/unit/itemProduct.dart';
import 'package:e_commerce/features/home/view/product/unit/seeall.dart';
import 'package:e_commerce/features/menua/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class ShowProduct extends StatelessWidget {
   late  final ZoomDrawerController zoomDrawerController;

   // ShowProduct( {required this.zoomDrawerController});

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
        color: kWhiteColors,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0 ,right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [


              SizedBox(height:5,),
              Row(
                children: [
                  Expanded(child:
                  TextFormField(

                    decoration: InputDecoration(
                        filled: true,
                        fillColor: kBackgroundColor,
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Colors.blueGrey),
                        prefixIcon: Icon(Icons.search),
                        border: InputBorder.none
                    ),
                  )),
                  SizedBox(width: 10,),
                  Container(
                    color: kBackgroundColor,
                    child: IconButton(
                        onPressed: (){
                          bootomSheet(context);
                        },
                        icon: Icon(Icons.filter_alt_outlined,)),
                  )

                ],
              ),
              SizedBox(height: 10,),
              SeeAllText(
                text: 'TRENDING PRODUCT',
                ontap: (){},
              ),
              Container(
                height: 200,
                child: ListView.separated(
                    separatorBuilder: (context,index)=>SizedBox(width: 15,),
                    itemCount: 4,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return ItemProduct();
                    }),
              ),
              SizedBox(height: 5,),
              SeeAllText(
                text: 'POPULAR CATEGORIES',
                ontap: (){},
              ),

              Row(
                //mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                //textBaseline: TextBaseline.ideographic,
                children: [
                  MaterialButton(
                    onPressed: (){},
                    child:Text("All") ,
                    minWidth: 50,
                    color: kPrimaryColors,
                    textColor: kWhiteColors,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                  ),

                  SizedBox(width: 20,),
                  Expanded(
                      child: SizedBox(
                        height: 30,
                        width: 50,
                        child: ListView.separated(
                            separatorBuilder: (context,index)=>SizedBox(width: 15,),
                            itemCount: 7,
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context,index){
                              return Text("Electorinc");
                            }),
                      )),
                  // Text("Electorinc And Applicances"),
                  // Text("Shirt")
                ],
              ),
              SizedBox(height: 10,),
              Container(
                height: 200,
                child: ListView.separated(
                    separatorBuilder: (context,index)=>SizedBox(width: 15,),
                    itemCount: 4,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return ItemProduct();
                    }),
              ),
              SizedBox(height: 20,)



            ],
          ),
        ),
      ),
    );
  }
}

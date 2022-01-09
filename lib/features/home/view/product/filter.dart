import 'package:e_commerce/const/colors.dart';
import 'package:e_commerce/cort/router/router.dart';
import 'package:e_commerce/features/home/cubit.dart';
import 'package:e_commerce/features/home/state.dart';
import 'package:e_commerce/widget/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void bootomSheet(context){


  showModalBottomSheet(
      isScrollControlled:true,
      // backgroundColor: kWhiteColors,
      // barrierColor: kPrimaryColors,
      elevation: 20,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topRight: Radius.circular(30))
      ),

      context: context,
      builder: (context){
        var cubit=HomeCubit.get(context);
        return Container(

          child: Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20,top: 20),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed:()=>MagicRouter.pop(),
                        icon: Icon(Icons.cancel_outlined)),
                    Text("Filters",style: TextStyle(
                      fontWeight: FontWeight.w600
                    ),)
                  ],
                ),
                SizedBox(height: 20,),
                Text('Categories',style: TextStyle(
                  fontSize: 25,fontWeight: FontWeight.bold
                ),),
                Container(
                  width: double.infinity,
                  height: 250,
                  child: ListView(
                    children: categories.keys.map((String key) {
                      return  BlocBuilder(
                        bloc: cubit,
                          builder:(context,state){
                            var cubit=HomeCubit.get(context);
                            return CheckboxListTile(
                              dense: true,
                              contentPadding: EdgeInsets.zero,
                              title: Text(key),
                              checkColor: kWhiteColors,
                              autofocus: false,
                              activeColor: kPrimaryColors,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(30)),),
                              controlAffinity: ListTileControlAffinity.leading,
                              value: categories[key],
                              onChanged: (value) {

                              categories[key]=cubit.changeCategories(value!);

                              },
                            );
                          });
                    }).toList(),
                  ),
                ),
                SizedBox(height: 20,),
                Text('Brand',style: TextStyle(
                    fontSize: 25,fontWeight: FontWeight.bold
                ),),
                Container(
                  width: double.infinity,
                  height: 280,
                  child: ListView(
                    children: brand.keys.map((String key) {
                      return  BlocBuilder(
                        bloc: cubit,
                          builder:(context,state){
                            var cubit=HomeCubit.get(context);
                            return CheckboxListTile(

                              enableFeedback: true,
                              dense: true,
                              contentPadding: EdgeInsets.zero,
                              title: Text(key),
                              checkColor: kWhiteColors,
                              activeColor: kPrimaryColors,
                              controlAffinity: ListTileControlAffinity.leading,
                              value: brand[key],
                              onChanged: (value) {

                              brand[key]=cubit.changeCategories(value!);

                              },
                            );
                          });
                    }).toList(),
                  ),
                ),
SizedBox(height: 10,),
                Center(
                  child: ButtonWidget
                    (ontap: (){},
                     textColor: kWhiteColors,
                    backgroundColor: kPrimaryColors,
                    txet: 'APPLY FILITER',
                    ),
                )

              ],
            ),
          ),

        );
      });
}


Map<String, bool> categories = {
  'Beds':false ,
  'Cabints': false,
  'Chairs And Seating': false,
  'Chests': false,
  'Clocks': false,
};
Map<String, bool> brand = {
  'Roche Bobis': false,
  'Edra': false,
  'PoliForm': false,
  'Chistophery Guy': false,
};


import 'package:e_commerce/const/colors.dart';
import 'package:e_commerce/cort/router/router.dart';
import 'package:e_commerce/features/productdetails/view.dart';
import 'package:flutter/material.dart';

class ItemProduct extends StatelessWidget {
  const ItemProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width/3,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: kBackgroundColor
      ),
      child: Padding
        (
        padding: const EdgeInsets.only(left: 10.0,right: 10,top: 20,bottom: 0),
        child: Column(
          children: [
            InkWell(
              onTap: (){
                MagicRouter.navigateTo(ProductDeatils());
              },
              child: Image.asset('assets/images/image.png',
                fit: BoxFit.cover,
                width: 200,),
            ),
            SizedBox(height: 20,),
            Text('Pank Chair',style: TextStyle(
                fontSize: 18,fontWeight: FontWeight.w400
            ),),
            SizedBox(height: 5,),
            Row(
               mainAxisAlignment: MainAxisAlignment.start,

              children: [
                Text('\$1230',style: TextStyle(
                  color: kPriceColors,fontSize: 15,
                ),),
                Spacer(),
                IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.add_shopping_cart,color: kPrimaryColors,size: 20,))
              ],
            )
          ],
        ),
      ),

    );
  }
}

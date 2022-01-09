import 'package:e_commerce/const/colors.dart';
import 'package:e_commerce/cort/router/router.dart';
import 'package:e_commerce/features/chat/view.dart';
import 'package:e_commerce/features/profile/units/listTitleWidget.dart';
import 'package:e_commerce/features/welcome/unit/circulAvatr.dart';
import 'package:e_commerce/widget/continer_widget.dart';
import 'package:flutter/material.dart';
class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColors,
      body: Column(
        children: [
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(

              children: [
                IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.arrow_back_ios,color: kWhiteColors,)),
                Text("MYAccount",style: TextStyle(
                    color: kWhiteColors,fontSize: 15,fontWeight: FontWeight.w500),),
                Spacer(),
                MaterialButton(
                    onPressed: (){},
                  child: Text("Edit Profile",style: TextStyle(
                    color: kPrimaryColors
                  ),),
                  color: kWhiteColors,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 50,),
          CirculrAvaterWidget(),
          SizedBox(height: 20,),
          Text("Rokke",style: TextStyle(
            color: kWhiteColors,fontWeight: FontWeight.bold,fontSize: 17
          ),),
          SizedBox(height: 5,),
          Text("Rokee@yahoo.com",style: TextStyle(
              color: kWhiteColors,fontWeight: FontWeight.w500,fontSize: 14
          )),
          SizedBox(height: 40,),
          ContinerWidget(
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0,left: 30,right: 30,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  ListTitleWidget(
                    icon: Icons.upcoming,
                    trailing: "6",
                    ontap: (){},
                    text: "Upcoming Orders",
                  ),
                  SizedBox(height: 20,),
                  ListTitleWidget(
                    icon: Icons.maps_ugc_sharp,
                    trailing: "",
                    ontap: (){},
                    text: "Manage Address",
                  ),
                  SizedBox(height: 20,),
                  ListTitleWidget(
                    icon: Icons.payment_outlined,
                    trailing: "",
                    ontap: (){},
                    text: "Update Paymeny",
                  ),
                  SizedBox(height: 20,),
                  ListTitleWidget(
                    icon: Icons.chat_bubble_outline_sharp,
                    trailing: "",
                    ontap: ()=>MagicRouter.navigateTo(ChatView()),
                    text: "MY Chats"
                  ),
                ],

              ),
            ),
          )

        ],
      ),
    );
  }
}

import 'package:e_commerce/const/colors.dart';
import 'package:e_commerce/cort/router/router.dart';
import 'package:e_commerce/features/chat/unit/bulidMassage.dart';
import 'package:e_commerce/widget/continer_widget.dart';
import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
   ChatView({Key? key}) : super(key: key);
  List<String> txetchat=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColors,

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0,top: 30),
            child: IconButton(onPressed: ()=>MagicRouter.pop(),
                icon: Icon(Icons.arrow_back_ios,color: kWhiteColors,)),
          ),

         Padding(
           padding: const EdgeInsets.only(left: 30.0,right: 30,bottom: 20,top: 20),
           child: Row(
             children: [
               Image.asset(
                 'assets/images/trademark.png',
                 width: 60,

                 // color: kWhiteColors,
               ),
               SizedBox(width: 20,),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisSize: MainAxisSize.min,
                 children: [
                   Text("HI THERE!",style: TextStyle(
                     color: kWhiteColors,fontWeight: FontWeight.bold,
                     fontSize: 20
                   ),),
                   SizedBox(height: 5,),
                   Text("How Can We Help You?",style: TextStyle(
                     color: kWhiteColors,fontSize: 16,fontWeight: FontWeight.w400
                   ),)
                 ],
               )
             ],
           ),
         ),
          ContinerWidget(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      maxRadius: 25,
                      backgroundImage: AssetImage('assets/images/welcome.png'),
                    ),
                    subtitle:Text( 'Abdo Hosny'),
                    title: Text('2M ago'),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ListView.separated(
                          itemBuilder: (context,index){
                            return BulidMassage(text: txetchat[index],);
                          },
                          separatorBuilder: (context,index)=>SizedBox(height: 10,),
                          itemCount:txetchat.length ),
                    ),
                  ),

                  Spacer(),
                  Container(
                    color: Colors.white,
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.sentiment_dissatisfied)),
                        Expanded(
                          child: TextFormField(

                            decoration: InputDecoration(
                              hintText: 'Massage',

                            ),
                          ),


                        ),
                        IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.send,color: Colors.black26,)),
                        IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.assignment_late_outlined,color: Colors.black26,)),
                      ],
                    ),
                  )
                ],
              ),
            ),

          )
        ],
      ),

    );
  }
}

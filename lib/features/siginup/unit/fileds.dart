import 'package:e_commerce/cort/validator/validitor.dart';
import 'package:e_commerce/features/siginup/cubit.dart';
import 'package:e_commerce/widget/continerWithTextFiled.dart';
import 'package:e_commerce/widget/input_form_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FieldsSignUp extends StatelessWidget {
   FieldsSignUp({Key? key}) : super(key: key);
  var formkey=GlobalKey<FormState>();
  TextEditingController user=TextEditingController();
  TextEditingController password=TextEditingController();
  TextEditingController conifrm=TextEditingController();
  TextEditingController phone=TextEditingController();
  TextEditingController email=TextEditingController();
  @override
  Widget build(BuildContext context) {
    var cubit=SignUpCubit.get(context);
    return Form(
      key: formkey,
      child: Column(
        children: [
          ContinerTextFiled(
              enable: false,
            fortext: 'Enter Name',
            controller: user,
            hint: 'Abdo_hosny',
            validator: Validator.userName,

          ),
          SizedBox(height: 15,),
          ContinerTextFiled(
            fortext: 'Enter Email',
            controller: email,
            enable: false,
            hint: 'Abdo_hosny@yahoo.com',
            validator: Validator.email,

          ),
          SizedBox(height: 15,),
          ContinerTextFiled(
            fortext: 'Enter Phone',
            inputType: TextInputType.number,
            controller: phone,
            enable: false,
            hint: '+2001223444',
            validator: Validator.userName,

          ),
          SizedBox(height: 15,),
          BlocBuilder(
            bloc: cubit,
              builder: (context,state)=>ContinerTextFiled(
                fortext: 'Password',
                controller: password,
                enable: cubit.isloading,
                hint: '* * * * * * * * ',
                validator: Validator.password,
                icon: IconButton(
                  icon:cubit.isloading?
                  Icon(Icons.visibility_off_outlined)
                      :Icon(Icons.visibility_outlined),
                  onPressed: (){
                    cubit.changeVisibility();
                  },
                ),
              )
          ),
          SizedBox(height: 15,),
         BlocBuilder(
           bloc: cubit,
             builder: (context,state)=>ContinerTextFiled(
               fortext: 'Confirm Password',
               controller: conifrm,
               enable: cubit.isloading,
               hint: '* * * * * * * * ',
               validator: Validator.password,
               icon: IconButton(
                 icon:cubit.isConfirm?
                 Icon(Icons.visibility_off_outlined)
                     :Icon(Icons.visibility_outlined),
                 onPressed: (){
                   cubit.changeVisibility();
                 },
               ),

             )
         ),
          SizedBox(height:15,),


        ],
      ),
    );
  }
}

import 'package:e_commerce/const/colors.dart';
import 'package:flutter/material.dart';

import 'input_form_filed.dart';

class ContinerTextFiled extends StatelessWidget {

 final String? fortext;
  final Widget?  child;
  final String? hint;
  final Function(String?)? onSaved;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? inputType;
  final Widget? icon;
  bool enable=false;

  ContinerTextFiled({
    this.fortext,
    this.child,
    this.hint,
    this.onSaved,
    this.validator,
    this.controller,
    this.inputType,
    required this.enable,
    this.icon
});


  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(left: 20,top: 10,),
      decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(1),
          color: Colors.black26.withOpacity(.05)
      ),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(fortext!,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
          TextFormField(
            keyboardType: inputType,
            controller: controller,
            obscureText: enable,
            decoration: InputDecoration(
              hintText: hint,
              suffixIcon: icon,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              errorBorder: _getBorder(Colors.red,8),
              focusedErrorBorder: _getBorder(kPrimaryColors,8),
            ),
            onSaved: onSaved,
            validator: validator,
          )
        ],
      ),
    );
  }
}
InputBorder _getBorder(Color color,double radius) => OutlineInputBorder(
  borderSide: BorderSide(color: color),
  borderRadius: BorderRadius.circular(radius),
);

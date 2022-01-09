import 'package:e_commerce/const/colors.dart';
import 'package:flutter/material.dart';

class InputFormField extends StatelessWidget {
  final String? hint;

  final Function(String?)? onSaved;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? inputType;
  final Widget? icon;
  bool enable=false;

  InputFormField({
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
    return TextFormField(
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
    );
  }

  InputBorder _getBorder(Color color,double radius) => OutlineInputBorder(
    borderSide: BorderSide(color: color),
    borderRadius: BorderRadius.circular(radius),
  );
}
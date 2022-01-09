import 'package:e_commerce/const/colors.dart';
import 'package:flutter/material.dart';

class ContinerWidget extends StatelessWidget {
  const ContinerWidget({Key? key,this.child}) : super(key: key);
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: kWhiteColors,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30))
        ),
        child: child,
      ),
    );
  }
}

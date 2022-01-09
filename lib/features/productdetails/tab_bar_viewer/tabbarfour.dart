import 'package:flutter/material.dart';
class TabBarViewFour extends StatelessWidget {
  const TabBarViewFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Text(" Tab Bar View Policy",style: TextStyle(
              color: Colors.black, fontSize: 20,
              height: 1.6
          ),
          ),
        )
    );
  }
}

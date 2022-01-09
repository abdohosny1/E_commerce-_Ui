import 'package:flutter/material.dart';
class Upi extends StatelessWidget {
  const Upi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Text(" Upi",style: TextStyle(
              color: Colors.black, fontSize: 20,
              height: 1.6
          ),
          ),
        )
    );
  }
}

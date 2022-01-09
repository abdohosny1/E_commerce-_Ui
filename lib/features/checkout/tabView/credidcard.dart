import 'package:flutter/material.dart';
class CreditCard extends StatelessWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Text(" CrditCard",style: TextStyle(
              color: Colors.black, fontSize: 20,
              height: 1.6
          ),
          ),
        )
    );
  }
}

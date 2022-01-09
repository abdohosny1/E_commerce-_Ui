import 'package:flutter/material.dart';

class NetBanking extends StatelessWidget {
  const NetBanking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Text(" Net Banking",style: TextStyle(
              color: Colors.black, fontSize: 20,
              height: 1.6
          ),
          ),
        )
    );
  }
}

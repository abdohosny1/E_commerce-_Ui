import 'package:flutter/material.dart';
class TabBarViewTwo extends StatelessWidget {
  const TabBarViewTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Text(" Tab Bar View Review",style: TextStyle(
              color: Colors.black, fontSize: 20,
              height: 1.6
          ),
          ),
        )
    );
  }
}

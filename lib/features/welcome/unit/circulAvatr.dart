import 'package:flutter/material.dart';

class CirculrAvaterWidget extends StatelessWidget {
  const CirculrAvaterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage('assets/images/welcome.png'),
      radius: 50,
    );
  }
}

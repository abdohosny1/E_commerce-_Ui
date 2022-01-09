import 'package:flutter/material.dart';
class TabBarViewOne extends StatelessWidget {
  const TabBarViewOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Text("Minimalist Styling Is Not About Creating A Cold, Hard, "
        "Empty White Box Of A Home. It Is About Using Simple And "
        "Natural Forms, And Taking Away Layers Without Losing "
        "The Aesthetic Appeal Of The Space. The Focus Is On Shape,"
        " With A Furniture And Accessories",style: TextStyle(
        color: Colors.black.withOpacity(.54),
        height: 1.6
      ),
      )
    );
  }
}

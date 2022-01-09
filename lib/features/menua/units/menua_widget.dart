
import 'package:flutter/material.dart';



class MenuWidget extends StatelessWidget {
  late  String menuName;
  late VoidCallback callback;
  late IconData icon;


  MenuWidget({required this.menuName,required this.callback,required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(icon,color: Colors.white,),
            SizedBox(width: 30,),
            Text(menuName,style: TextStyle(
                fontSize: 16,color: Colors.white,fontWeight: FontWeight.w700
            ),)
          ],
        ),
      ),
    );
  }
}
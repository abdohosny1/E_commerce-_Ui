

part of '../view.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
                onPressed: (){
                  // submit();
                },
                child: Text(
                  'SKIP',style: TextStyle(color:kWhiteColors,fontSize: 20,fontWeight: FontWeight.w600),)),
          ],
        )
      ],
    );
  }
}

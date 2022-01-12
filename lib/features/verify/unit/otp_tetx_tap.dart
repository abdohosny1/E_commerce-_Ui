part of'../view.dart';

class TextTab extends StatelessWidget {
  const TextTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('OTP VERRIFICATION',style: TextStyle(
            color: kPrimaryColors,fontWeight: FontWeight.w700
        ),),
        SizedBox(height: 20,),
        Text('OTP has been sent To +01111111',style: TextStyle(
            color: kBlackColors,fontWeight: FontWeight.w400
        ),),
      ],
    );
  }
}

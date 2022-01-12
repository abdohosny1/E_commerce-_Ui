part of'../view.dart';

class VerifyButton extends StatelessWidget {
  const VerifyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   ButtonWidget(
      ontap: (){},
      txet: 'Verify OTP',
      backgroundColor: kPrimaryColors,
      textColor: kWhiteColors,
    );
  }
}

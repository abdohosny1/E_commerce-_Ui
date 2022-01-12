part of '../view.dart';

class ConfirmSignIn extends StatelessWidget {
   ConfirmSignIn({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ButtonWidget(
          ontap: (){
            MagicRouter.navigateTo(MenuaScreen());
          },
          txet: 'SIGN IN',
          backgroundColor: kPrimaryColors,
          textColor: kWhiteColors,
        ),
        SizedBox(height: 10,),
        TextButtonWidget(
          text: 'Forgot Password ?',
          textcolor: Colors.blueGrey,
          ontap: (){
            MagicRouter.navigateTo(VerifyView());

          },
        ),
      ],
    );
  }
}

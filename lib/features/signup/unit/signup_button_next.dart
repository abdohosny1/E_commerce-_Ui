part of '../view.dart';

class Next extends StatelessWidget {
  const Next({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonWidget(
      ontap: (){
        MagicRouter.navigateTo(WelcomeView());
      },
      txet: 'NEXT',
      backgroundColor: kPrimaryColors,
      textColor: kWhiteColors,

    );
  }
}

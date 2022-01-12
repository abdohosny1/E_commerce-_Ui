
part of'../view.dart';
class VerifyResend extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var cubit=VerifyCubit.get(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BlocBuilder(
          bloc: cubit,
          builder: (context,state)=>Text(
              '00:${cubit.count.toString().padLeft(2,'0')}',
          style: TextStyle(fontWeight: FontWeight.w500),),
        ),
        TextButtonWidget(
          textcolor: Colors.blueGrey,
          text: 'Resend OTP ?',
          ontap: (){
            cubit.startTimer();
          },

        )
      ],
    );
  }
}

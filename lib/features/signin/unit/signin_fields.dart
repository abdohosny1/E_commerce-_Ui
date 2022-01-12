part of'../view.dart';

class SignInFields extends StatelessWidget {
   SignInFields({Key? key}) : super(key: key);
  var formkey=GlobalKey<FormState>();
  TextEditingController user=TextEditingController();
  TextEditingController password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    var cubit=RegisterCubit.get(context);
    return Form(
      key: formkey,
      child: Column(
        children: [
          ContinerTextFiled(
            fortext: 'User Name',
              controller: user,
              enable: false,
              hint: 'Abdo_hosny',
              validator: Validator.userName,
              ),
          SizedBox(height: 20,),
          BlocBuilder(
            bloc: cubit,
            builder:(context,state)=> ContinerTextFiled(
              fortext: 'Password',
              controller: password,
              enable: cubit.isloading,
              hint: '* * * * * * * * ',
              validator: Validator.userName,
              icon: IconButton(
                icon:cubit.isloading?
                Icon(Icons.visibility_off_outlined)
                    :Icon(Icons.visibility_outlined),
                onPressed: (){
                  cubit.changeVisibility();
                },
              ),

            ),
          ),


        ],
      ),
    );
  }
}

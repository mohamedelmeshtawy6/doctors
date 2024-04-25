import 'package:doctors/features/login/logic/cubit/login_cubit.dart';
import 'package:doctors/features/login/logic/cubit/login_state.dart';
import 'package:doctors/helper/extensions.dart';
import 'package:doctors/router/routes.dart';
import 'package:doctors/theming/app_colors.dart';
import 'package:doctors/theming/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
 return
 BlocListener<LoginCubit, LoginState>(
  
  listenWhen: (previous, current) {
  return current is Loading || current is Success || current is Failure;
  },
  listener: (context, state) {


state.whenOrNull(

  loading: (){
    showDialog(context: context, builder: (context){
      return const Center(child: CircularProgressIndicator(),);
    });
  }
  ,
  success: (loginResponse){
    Navigator.pop(context);
    context.pushNamed(Routes.homeScreen);

  },
  failure: (errorhandler){
    Navigator.pop(context);
    showDialog(context: context, builder: (context){
      return AlertDialog(content: Text(errorhandler),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context);
          
        },
        child: Text('Ok',style: Styles.font15greyw5n.copyWith(color: AppColors.mainBlue),),
        )
      ],
      icon: const Icon(Icons.error,color: Colors.red,),
      );
    });
    
  },

);
 },
child: const SizedBox.shrink(), 
 );
   }

}
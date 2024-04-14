


import 'package:doctors/features/signup/logic/signup_state.dart';
import 'package:doctors/features/signup/logic/singup_cubit.dart';
import 'package:doctors/helper/extensions.dart';
import 'package:doctors/router/routes.dart';
import 'package:doctors/theming/color_manager.dart';
import 'package:doctors/theming/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpBlocListener extends StatelessWidget {
  const SignUpBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return
 BlocListener<SignUpCubit, SignUpState>(
  
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
        child: Text('Ok',style: Styles.font15greyw5n.copyWith(color: ColorManager.mainBlue),),
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
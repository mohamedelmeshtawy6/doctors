import 'dart:developer';

import 'package:doctors/core/helper/snackbar.dart';
import 'package:doctors/features/login/logic/cubit/login_cubit.dart';
import 'package:doctors/features/login/logic/cubit/login_state.dart';
import 'package:doctors/core/helper/extensions.dart';
import 'package:doctors/core/router/routes.dart';
import 'package:doctors/core/theming/app_colors.dart';
import 'package:doctors/core/theming/font_styles.dart';
import 'package:doctors/features/setting/logic/cubit/setting_cubit.dart';
import 'package:doctors/features/setting/logic/cubit/setting_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingBlocListener extends StatelessWidget {
  const SettingBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
 return
 BlocListener<SettingCubit, SettingState>(
  
  listenWhen: (previous, current) {
  return  current is IntenetFailed;
  },
  listener: (context, state) {


state.whenOrNull(


  internetFailed: (){
    sharedSnackBar(context, Icons.info, Colors.red, 'No Internet', Color.fromARGB(255, 167, 58, 58)); 
   /*  showDialog(context: context, builder: (context){
      return AlertDialog(content: SingleChildScrollView(child: Text()),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context);
          
        },
        child: Text('Ok',style: Styles.font15greyw5n.copyWith(color: AppColors.mainBlue),),
        )
      ],
      icon: const Icon(Icons.error,color: Colors.red,),
      );
    }); */
    
  },

);
 },
child: const SizedBox.shrink(), 
 );
   }

}
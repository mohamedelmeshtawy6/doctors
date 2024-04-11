import 'package:doctors/features/login/ui/widget/password_validations.dart';
import 'package:doctors/helper/app_regular_expression.dart';
import 'package:doctors/helper/area_size.dart';
import 'package:doctors/widget/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/cubit/login_cubit.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool obscureText = true;
    bool haslength=false;
  bool hasUppercase=false;
   bool hasLowercase=false;
   bool hasNumber=false;
   bool hasSpecialChar=false;
   TextEditingController passwordcontroller =TextEditingController();
  @override
  void initState(){
super.initState();
   // passwordcontroller = context.read<LoginCubit>().passwordController;
    setUpPasswordAddListener();

  }

 setUpPasswordAddListener(){

   passwordcontroller.addListener(() {
   //! this instruction can't excute 
     setState(() {
       hasUppercase=AppRegex.hasUpperCase(passwordcontroller.text);
       hasLowercase=AppRegex.hasLowerCase(passwordcontroller.text);
       hasNumber=AppRegex.hasNumber(passwordcontroller.text);
       hasSpecialChar=AppRegex.hasSpecialCharacter(passwordcontroller.text);
       haslength=AppRegex.hasMinLength(passwordcontroller.text);

     });
   });
 }
  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<LoginCubit>().formKey,
        child: Column(children: [
      AppTextFormField(
        controller:context.read<LoginCubit>().emailController,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your email';
          }
          else if (!AppRegex.isEmailValid(value)) {
            return 'Please enter your correct  email';
          }
        
        },
        hintText: 'Email',
      ),
      verticalSpacer(
        16,
      ),
      AppTextFormField(
        controller:context.read<LoginCubit>().passwordController,
        validator:(value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your password';
          }
           else if (!AppRegex.isPasswordValid(value)) {
            return 'Please enter your correct password';
          }
        },
        hintText: 'Password',
        obscureText: obscureText, 
        suffix: GestureDetector(
            onTap: () {
              setState(() {
                obscureText = !obscureText;
              });
            },
            child: obscureText
                ? const Icon(Icons.visibility)
                : const Icon(Icons.visibility_off)),
      ),
        verticalSpacer(
                        24,
                      ),
                      PasswordValidations(
                        haslength: haslength,
                        hasUppercase: hasUppercase,
                        hasLowercase: hasLowercase,
                        hasNumber: hasNumber,
                        hasSpecialChar: hasSpecialChar,

                      )
    ]));
  }



}

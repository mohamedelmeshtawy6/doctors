import 'package:doctors/features/login/ui/widget/password_validations.dart';
import 'package:doctors/features/signup/logic/singup_cubit.dart';
import 'package:doctors/helper/app_regular_expression.dart';
import 'package:doctors/helper/area_size.dart';
import 'package:doctors/widget/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormDataWidget extends StatefulWidget {
  const FormDataWidget({super.key});

  @override
  State<FormDataWidget> createState() => _FormDataWidgetState();
}

class _FormDataWidgetState extends State<FormDataWidget> {

  bool obscureText = true;
    bool haslength=false;
  bool hasUppercase=false;
   bool hasLowercase=false;
   bool hasNumber=false;
   bool hasSpecialChar=false;
   TextEditingController passwordcontroller =TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<SignUpCubit>().formKey,
        child: Column(children: [
      AppTextFormField(
        controller:context.read<SignUpCubit>().nameController,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your name';
          }
        },
        hintText: 'name',
      ),
         verticalSpacer(
        16,
      ),
      AppTextFormField(
        controller:context.read<SignUpCubit>().emailController,
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
        controller:context.read<SignUpCubit>().phoneController,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your phone number';
          }
          else if (!AppRegex.isPhoneValid(value)) {
            return 'Please enter valid phone number';
          }
        
        },
        hintText: 'Phone number',
      ),
      verticalSpacer(
        16,
      ),
      AppTextFormField(
        controller:context.read<SignUpCubit>().passwordController,
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
                        16,
                      ),
      AppTextFormField(
        controller:context.read<SignUpCubit>().confirmPasswordController,
        validator:(value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your password ';
          }
           else if (!AppRegex.isPasswordValid(value)) {
            return 'Please enter your correct password';
          }
        },
        hintText: 'confirm Password',
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
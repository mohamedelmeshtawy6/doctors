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

  bool obscurePassword1 = true;
  bool obscurePassword2 = true;
    bool haslength=false;
  bool hasUppercase=false;
   bool hasLowercase=false;
   bool hasNumber=false;
   bool hasSpecialChar=false;
   TextEditingController passwordcontroller =TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<SignupCubit>().formKey,
        child: Column(children: [
      AppTextFormField(
        controller:context.read<SignupCubit>().nameController,
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
        controller:context.read<SignupCubit>().emailController,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your email';
          }
          else if (!AppRegularExprission.isEmailValid(value)) {
            return 'Please enter your correct  email';
          }
        
        },
        hintText: 'Email',
      ),
      verticalSpacer(
        16,
      ),
      AppTextFormField(
        controller:context.read<SignupCubit>().phoneController,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your phone number';
          }
          else if (!AppRegularExprission.isPhoneValid(value)) {
            return 'Please enter valid phone number';
          }
        
        },
        hintText: 'Phone number',
      ),
      verticalSpacer(
        16,
      ),
      AppTextFormField(
        controller:context.read<SignupCubit>().passwordController,
        validator:(value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your password';
          }
           else if (!AppRegularExprission.isPasswordValid(value)) {
            return 'Please enter your correct password';
          }
        },
        hintText: 'Password',
        obscureText: obscurePassword1, 
        suffix: GestureDetector(
            onTap: () {
              setState(() {
                obscurePassword1 = !obscurePassword1;
              });
            },
            child: obscurePassword1
                ? const Icon(Icons.visibility)
                : const Icon(Icons.visibility_off)),
      ),
        verticalSpacer(
                        16,
                      ),
      AppTextFormField(
        controller:context.read<SignupCubit>().confirmPasswordController,
        validator:(value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your password ';
          }
           else if (!AppRegularExprission.isPasswordValid(value)) {
            return 'Please enter your correct password';
          }
        },
        hintText: 'confirm Password',
        obscureText: obscurePassword2, 
        suffix: GestureDetector(
            onTap: () {
              setState(() {
                obscurePassword2 = !obscurePassword2;
              });
            },
            child: obscurePassword2
                ? const Icon(Icons.visibility)
                : const Icon(Icons.visibility_off)),
      ),
        verticalSpacer(
                        14,
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
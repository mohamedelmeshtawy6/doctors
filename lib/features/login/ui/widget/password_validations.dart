import 'package:doctors/theming/color_manager.dart';
import 'package:doctors/theming/font_styles.dart';
import 'package:flutter/material.dart';

import '../../../../helper/area_size.dart';

class PasswordValidations extends StatelessWidget {
  final bool haslength;
  final bool hasUppercase;
  final bool hasLowercase;
  final bool hasNumber;
  final bool hasSpecialChar;

  const PasswordValidations(
      {super.key,
      required this.haslength,
      required this.hasUppercase,
      required this.hasLowercase,
      required this.hasNumber,
      required this.hasSpecialChar});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At least 8 characters', haslength),
        verticalSpacer(2),
        buildValidationRow('At least 1 uppercase', hasUppercase),
        verticalSpacer(2),
        buildValidationRow('At least 1 lowercase', hasLowercase),
        verticalSpacer(2),
        buildValidationRow(' At least 1 number', hasNumber),
        verticalSpacer(2),
        buildValidationRow('At least 1 special character', hasSpecialChar),
        verticalSpacer(2)
      ],
    );
  }

  Widget buildValidationRow(String text, bool isValid) {
    return Row(children: [
      const CircleAvatar(
        radius: 2.0,
        backgroundColor: ColorManager.grey,
      ),
      horizontalSpacer(6),
      Text(text,
          style: Styles.font12lighterGreyw4n.copyWith(
              color: isValid ? Colors.grey : ColorManager.lighterGrey,
              decoration: !isValid ? null : TextDecoration.lineThrough,
              decorationColor: Colors.green)),
      horizontalSpacer(6),
    ]);
  }
}

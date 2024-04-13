import 'package:doctors/helper/area_size.dart';
import 'package:doctors/helper/extensions.dart';
import 'package:doctors/router/routes.dart';
import 'package:doctors/theming/font_styles.dart';
import 'package:flutter/material.dart';

class MyRichText extends StatelessWidget {
  const MyRichText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          textAlign: TextAlign.center,
            text: TextSpan(children: <TextSpan>[
          TextSpan(
              text: 'By logging, you agree to our ',
              style: Styles.font12lighterGreyw4n.copyWith()),
          TextSpan(
              text: 'Terms & Conditions ',
              style: Styles.font12blackw4n),
          TextSpan(text: 'and ', style: Styles.font12lighterGreyw4n),
          TextSpan(
              text: 'PrivacyPolicy.',
              style: Styles.font12blackw4n.copyWith(height: 2)),
        ])),

            verticalSpacer(
                          24,
                        ),
                        InkWell(
                          onTap: () {
                            context.pushNamed(Routes.loginScreen);
                          },
                          child: RichText(
                              text: TextSpan(children: <TextSpan>[
                            TextSpan(
                                text: 'Already have an account yet? ',
                                style: Styles.font12blackw4n),
                            TextSpan(
                                text: 'Login  ', style: Styles.font13mainBluew4n),
                          ])),
                        ),
      ],
    );
  }
}

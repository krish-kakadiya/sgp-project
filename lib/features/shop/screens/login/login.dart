import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sgp/common/widget.login_signup/form_divider.dart';
import 'package:sgp/features/shop/screens/login/widget/header.dart';
import 'package:sgp/features/shop/screens/login/widget/login_form.dart';

import '../../../../common/styles/spacing_style.dart';
import '../../../../common/widget.login_signup/social_botton.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_string.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: TSpacingStyle.paddingWithAppBarHeight,
            child: Column(
              children: [
                const Login_Header(),

                const Login_Form(),

                form_divider(dividerText:TTexts.orSignInWith.capitalize!),
                const SizedBox(height: TSizes.spaceBtwSections),

                const SocialButton(),
              ],
            ),
        ),
      ),
    );
  }
}









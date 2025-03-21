import 'package:flutter/material.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_string.dart';
import '../../../../../utils/helpers/helper_function.dart';

class Login_Header extends StatelessWidget {
  const Login_Header({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Column(

      children: [

        SizedBox(height: TSizes.spaceBtwInputField),

        Image(
          height: 150,
          image: AssetImage(dark ? TImages.darkLogin : TImages.lightLogin),
        ),
        SizedBox(height: TSizes.spaceBtwInputField),
        Text(TTexts.loginTitle, style: Theme.of(context).textTheme.headlineLarge),

      ],
    );
  }
}
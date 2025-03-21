import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_string.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(TTexts.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: TSizes.spaceBtwItems),
          Text(TTexts.forgetPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium),
          const SizedBox(height: TSizes.spaceBtwSections * 2),
          
          TextFormField(decoration: InputDecoration(labelText: TTexts.email, prefixIcon: Icon(Iconsax.direct_right))),

          const SizedBox(height: TSizes.spaceBtwSections ),

          SizedBox(width: double.infinity,child: ElevatedButton(onPressed: () {}, child: const Text(TTexts.submit)))

        ],
      ),
      ),

    );
  }
}

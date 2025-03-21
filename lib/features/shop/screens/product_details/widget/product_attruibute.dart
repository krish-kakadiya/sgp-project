import 'package:flutter/material.dart';
import 'package:sgp/common/widget/custom_shapes/containers/rounded_container.dart';
import 'package:sgp/common/widget/price/product_price_text.dart';
import 'package:sgp/common/widget/texts/product_title_text.dart';
import 'package:sgp/common/widget/texts/section_heading.dart';
import 'package:sgp/utils/constants/colors.dart';
import 'package:sgp/utils/constants/sizes.dart';
import 'package:sgp/utils/helpers/helper_function.dart';

import '../../../../../common/widget/chips/choice_chip.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Column(
      children: [
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(

            children: [
              Row(

                children: [
                  TSectionHeading(title: 'Variation', showActionButton: false),
                  SizedBox(width: TSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Row(

                        children: [
                          const TProductTitleText(
                              title: 'Price : ', smallSize: true),
                          const SizedBox(width: TSizes.spaceBtwItems),
                          Text('₹250', style: Theme
                              .of(context)
                              .textTheme
                              .titleSmall!
                              .apply(decoration: TextDecoration.lineThrough)),
                          const SizedBox(width: TSizes.spaceBtwItems),
                          TProductPriceText(price: '200'),
                        ],
                      ),

                    ],
                  ),
                ],
              ),

            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Size',showActionButton: false,),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 0,
              children: [
                TChoiceChip(text: 'Small', selected: false, onSelected: (value) {}),
                const SizedBox(width: TSizes.spaceBtwItems / 2),
                TChoiceChip(text: 'Medium', selected: true, onSelected: (value) {}),
                const SizedBox(width: TSizes.spaceBtwItems / 2),
                TChoiceChip(text: 'Large', selected: false, onSelected: (value) {}),
                TChoiceChip(text: 'Extra Large', selected: false, onSelected: (value) {}),

              ],
            ),


          ],
        ),
      ],
    );
  }
}


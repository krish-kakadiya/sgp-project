import 'package:flutter/material.dart';
import 'package:sgp/common/widget/icons/brand_title_verified_icon.dart';
import 'package:sgp/common/widget/images/t_circular_image.dart';
import 'package:sgp/common/widget/price/product_price_text.dart';
import 'package:sgp/common/widget/texts/product_title_text.dart';
import 'package:sgp/utils/constants/enums.dart';
import 'package:sgp/utils/constants/image_strings.dart';

import '../../../../../common/widget/custom_shapes/containers/rounded_container.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_function.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            TRoundedContainer(
              radius: TSizes.sm,
              backgroundColor: Colors.yellow.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
              child: Text("25%", style: Theme.of(context).textTheme.labelLarge!.apply(color: Colors.black)),
            ),
            const SizedBox(width: TSizes.spaceBtwItems),

            Text('₹250', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: TSizes.spaceBtwItems),
            const TProductPriceText( price: '200',isLarge: true,),

          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        const TProductTitleText(title: 'Margarita Pizza'),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        Row(
          children: [
            const TProductTitleText(title: 'Status :'),
            const SizedBox(width: TSizes.spaceBtwItems),

            Text('Available', style: Theme.of(context).textTheme.titleMedium),

          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

         Row(
           children: [
             TCircularImage(
               fit: BoxFit.cover,
                 image: TImages.LPizza,
               width: 40,
               height: 40,

             ),
             const TBrandTitleWithVerifiedIcon(title: 'La Pino\'z Pizza',brandTextSize: TextSizes.medium,),
           ],
         )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:sgp/common/widget/icons/brand_title_verified_icon.dart';
import 'package:sgp/common/widget/images/t_rounded_image.dart';
import 'package:sgp/common/widget/texts/product_title_text.dart';
import 'package:sgp/features/shop/screens/product_details/product_detail.dart';
import 'package:sgp/utils/constants/colors.dart';
import 'package:sgp/utils/constants/image_strings.dart';
import 'package:sgp/utils/helpers/helper_function.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../styles/shadows.dart';
import '../../custom_shapes/containers/rounded_container.dart';
import '../../icons/circular_icon.dart';
import '../../price/product_price_text.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailScreen()),
      child: Container(

        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkerGrey : Colors.white30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? Colors.black : Colors.white,
              child: Stack(

                children: [
                  TRoundedImage(
                      imageUrl: TImages.MargaritaPizza, applyImageRadius: true),
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: Colors.yellow.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text("25%",
                          style: Theme
                              .of(context)
                              .textTheme
                              .labelLarge!
                              .apply(color: Colors.black)),
                    ),
                  ),
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: TCircularIcon(width: 40,
                        height: 40,
                        icon: Iconsax.heart,
                        color: Colors.red),
                  ),
                ],
              ),
            ),

            const SizedBox(height: TSizes.spaceBtwItems / 2),

            Padding(
              padding: const EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductTitleText(title: 'margarita Pizza', smallSize: true),
                  SizedBox(height: TSizes.spaceBtwItems / 2),

                  TBrandTitleWithVerifiedIcon(title: 'Pizza'),


                ],
              ),
            ),

            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                    padding: EdgeInsets.only(left: TSizes.sm),
                  child: TProductPriceText(price: '200'),

                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(TSizes.cardRadiusMd),
                      bottomRight: Radius.circular(TSizes.productImageRadius),
                    ),
                  ),

                  child: const SizedBox(
                    width: TSizes.iconLg * 1.2,
                    height: TSizes.iconLg * 1.2,
                    child: Center(child: Icon(Icons.add, color: Colors.white)),
                  ),
                ),

              ],
            )
          ],
        ),
      ),);
  }
}





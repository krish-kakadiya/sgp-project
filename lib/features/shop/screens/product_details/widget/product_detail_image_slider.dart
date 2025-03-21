import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../../common/widget/appbar/appbar.dart';
import '../../../../../common/widget/custom_shapes/curved_edges/Curved_Edges_Widget.dart';
import '../../../../../common/widget/icons/circular_icon.dart';
import '../../../../../common/widget/images/t_rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_function.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return CustomCurvedEdgesWidget(
      child: Container(
        color: dark ? TColors.darkerGrey : TColors.light,
        child: Stack(
          children: [
            const SizedBox(height: 400,child:  Image(image: AssetImage(TImages.MargaritaPizza))),

            Positioned(
              right: 0,
              bottom: 30,
              left: TSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder:  (_, __) => const SizedBox(width: TSizes.spaceBtwItems),
                  itemCount: 6,
                  itemBuilder: (_, index) => TRoundedImage(
                    width: 80,
                    backgroundColor: dark ? Colors.black : Colors.white,
                    border: Border.all(color: TColors.primary),
                    padding: const EdgeInsets.all(TSizes.sm),
                    imageUrl: TImages.pizza,
                  ),
                ),
              ),
            ),

            const TAppbar(
              showBackArrow: true,
              actions: [
                TCircularIcon(icon: Iconsax.heart, color: Colors.red)
              ],
            )
          ],
        ),
      ),
    );
  }
}
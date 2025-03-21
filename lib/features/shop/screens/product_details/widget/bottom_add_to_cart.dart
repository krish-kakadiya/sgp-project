import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:sgp/common/widget/icons/circular_icon.dart';
import 'package:sgp/utils/constants/colors.dart';
import 'package:sgp/utils/constants/sizes.dart';
import 'package:sgp/utils/helpers/helper_function.dart';

class TBottomAddToCart extends StatelessWidget {
  const TBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace, vertical: TSizes.defaultSpace / 2),
      decoration: BoxDecoration(
        color: dark ? TColors.darkerGrey : TColors.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(TSizes.cardRadiusLg),
          topRight: Radius.circular(TSizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              TCircularIcon(
                  icon: Iconsax.minus,
                backgroundColor: TColors.darkerGrey,
                width: 40,
                height: 40,
                color: Colors.white,
              ),
              const SizedBox(width: TSizes.spaceBtwItems),
              Text('2',style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(width: TSizes.spaceBtwItems),
              TCircularIcon(
                icon: Iconsax.add,
                backgroundColor: Colors.black,
                width: 40,
                height: 40,
                color: Colors.white,
              ),
            ],
          ),
          ElevatedButton(
              onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(TSizes.md),
              backgroundColor: Colors.black,
              side: const BorderSide(color: Colors.black),
            ),
              child: const Text('Add to Cart'),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../utils/constants/enums.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';
import '../../custom_shapes/containers/rounded_container.dart';
import '../../icons/brand_title_verified_icon.dart';
import '../../images/t_circular_image.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key, required this.showBorder, this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child:
      TRoundedContainer(
        padding: const EdgeInsets.all(TSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Flexible(
              child:
              TCircularImage(
                isNetworkImage: false,
                image: TImages.LPizza,
                backgroundColor: Colors.transparent,
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwItems / 2),

            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TBrandTitleWithVerifiedIcon(title: 'La Pino\'z Pizza ',brandTextSize: TextSizes.large),
                  Text(
                    '10 items',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],

              ),),
          ],
        ),
      ),);
  }
}
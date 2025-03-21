import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sgp/features/shop/controllers/home_controller.dart';

import '../../../../../common/widget/custom_shapes/containers/circular_container.dart';
import '../../../../../common/widget/images/t_rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
          items: const [
            TRoundedImage(imageUrl: TImages.banner1),
            TRoundedImage(imageUrl: TImages.banner2),
            TRoundedImage(imageUrl: TImages.banner3),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Center(
          child: Obx(
                () => Row(
                  mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < 3; i++)
                  CircularContainer(
                      width: 20,
                      height: 4,
                      margin: const EdgeInsets.only(right: 10),
                      backgroundColor: controller.carousalCurrentIndex.value == i
                          ? TColors.primary
                          : Colors.grey),
              ],
            ),
          ),
        )
      ],
    );
  }
}

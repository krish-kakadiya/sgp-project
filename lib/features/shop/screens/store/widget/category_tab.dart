import 'package:flutter/material.dart';
import 'package:sgp/common/widget/layouts/grid_layout.dart';
import 'package:sgp/common/widget/products.cart/product_cards/product_card_vertical.dart';
import 'package:sgp/common/widget/texts/section_heading.dart';

import '../../../../../common/widget/brands/brand_show_case.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [

        Padding(

        padding:const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            TBrandShowCase(images: [ TImages.pizza, TImages.MargaritaPizza, TImages.pizza],),
            TBrandShowCase(images: [ TImages.pizza, TImages.MargaritaPizza, TImages.pizza],),


            const SizedBox(height: TSizes.spaceBtwItems),
      
            TSectionHeading(title: 'You might like', onPressed: () {}),
            const SizedBox(height: TSizes.spaceBtwItems),
      
            TGridLayout(itemCount: 4, itemBuilder: (_, index) => const TProductCardVertical()),
            const SizedBox(height: TSizes.spaceBtwSections),

          ],
        ),
      ),],
    );
  }
}

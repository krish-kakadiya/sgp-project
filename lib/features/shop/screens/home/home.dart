import 'package:flutter/material.dart';
import 'package:sgp/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:sgp/features/shop/screens/home/widgets/home_categories.dart';
import 'package:sgp/features/shop/screens/home/widgets/promo_slider.dart';
import '../../../../common/widget/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widget/custom_shapes/containers/search_container.dart';
import '../../../../common/widget/layouts/grid_layout.dart';
import '../../../../common/widget/products.cart/product_cards/product_card_vertical.dart';
import '../../../../common/widget/texts/section_heading.dart';
import '../../../../utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  const THomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  const TSearchContainer(text: 'Search your favourite Food'),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(
                            title: 'Popular Categories',
                            showActionButton: false,
                            textColor: Colors.white),
                        const SizedBox(height: TSizes.spaceBtwItems),
                        THomeCategories(),
                      ],
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                ],

              ),
            ),

            //body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  TPromoSlider(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  TSectionHeading(title: 'Popular Items',onPressed: (){}),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  TGridLayout(itemCount: 4,itemBuilder: (_, index) => TProductCardVertical()),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}






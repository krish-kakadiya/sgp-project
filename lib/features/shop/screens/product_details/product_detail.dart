import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:sgp/common/widget/appbar/appbar.dart';
import 'package:sgp/common/widget/custom_shapes/curved_edges/Curved_Edges_Widget.dart';
import 'package:sgp/common/widget/icons/circular_icon.dart';
import 'package:sgp/common/widget/images/t_circular_image.dart';
import 'package:sgp/common/widget/images/t_rounded_image.dart';
import 'package:sgp/common/widget/texts/section_heading.dart';
import 'package:sgp/features/shop/screens/product_details/widget/bottom_add_to_cart.dart';
import 'package:sgp/features/shop/screens/product_details/widget/product_attruibute.dart';
import 'package:sgp/features/shop/screens/product_details/widget/product_detail_image_slider.dart';
import 'package:sgp/features/shop/screens/product_details/widget/product_meta_data.dart';
import 'package:sgp/features/shop/screens/product_details/widget/rating_share_widget.dart';
import 'package:sgp/utils/constants/colors.dart';
import 'package:sgp/utils/constants/image_strings.dart';
import 'package:sgp/utils/constants/sizes.dart';
import 'package:sgp/utils/helpers/helper_function.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [

            TProductImageSlider(),

            Padding(
                padding: EdgeInsets.only(right: TSizes.defaultSpace,left: TSizes.defaultSpace,bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  TRatingAndShare(),

                  TProductMetaData(),

                  TProductAttributes(),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: Text('CheckOut'))),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TSectionHeading(title: 'Reviews(199)', showActionButton: false),
                      IconButton(onPressed: () {}, icon: const Icon(Iconsax.arrow_right,size: 18))
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}




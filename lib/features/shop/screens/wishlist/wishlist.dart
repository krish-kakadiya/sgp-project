import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:sgp/common/widget/appbar/appbar.dart';
import 'package:sgp/common/widget/icons/circular_icon.dart';
import 'package:sgp/common/widget/layouts/grid_layout.dart';
import 'package:sgp/common/widget/products.cart/product_cards/product_card_vertical.dart';
import 'package:sgp/features/shop/screens/home/home.dart';
import 'package:sgp/utils/constants/sizes.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppbar(
        title: Text('WishList', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          TCircularIcon(icon: Iconsax.add, onPressed:  () => Get.to(const HomeScreen())),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TGridLayout(itemCount: 4, itemBuilder: (_, index) => const TProductCardVertical()),
            ],
          ),
        ),
      ),
    );
  }
}

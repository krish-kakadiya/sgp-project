import 'package:flutter/material.dart';
import 'package:sgp/common/widget/appbar/appbar.dart';
import 'package:sgp/common/widget/custom_shapes/containers/search_container.dart';
import 'package:sgp/common/widget/layouts/grid_layout.dart';
import 'package:sgp/common/widget/products.cart/cart_menu_icon.dart';
import 'package:sgp/common/widget/texts/section_heading.dart';
import 'package:sgp/features/shop/screens/store/widget/category_tab.dart';
import 'package:sgp/utils/constants/sizes.dart';
import 'package:sgp/utils/helpers/helper_function.dart';

import '../../../../common/widget/appbar/tabbar.dart';
import '../../../../common/widget/products.cart/product_cards/brand_card.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppbar(
          title: Text('Store', style: Theme
              .of(context)
              .textTheme
              .headlineMedium),
          actions: [
            TCartCounterIcon(onPressed: () {}),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: THelperFunction.isDarkMode(context)
                    ? Colors.black
                    : Colors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(height: TSizes.spaceBtwItems),
                      const TSearchContainer(
                          text: 'Search in Store',
                          showBorder: true,
                          showBackGround: false,
                          padding: EdgeInsets.zero),
                      const SizedBox(height: TSizes.spaceBtwSections),
                      TSectionHeading(
                          title: 'Featured Foods',
                          showActionButton: true,
                          onPressed: () {}),
                      const SizedBox(height: TSizes.spaceBtwItems / 1.5),
                      TGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return const TBrandCard(showBorder: true);
                        },
                      ),
                    ],
                  ),
                ),

                bottom: const TTabBar(
                    tabs: [
                      Tab(child: Text('Pizza')),
                      Tab(child: Text('Burger')),
                      Tab(child: Text('Sandwich')),
                      Tab(child: Text('Samosa')),
                      Tab(child: Text('Samosa')),

                    ]),
              ),

            ];
          },
          body: TabBarView(
              children: [
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),

              ]),
        ),
      ),
    );
  }
}

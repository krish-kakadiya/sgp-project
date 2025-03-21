import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:sgp/common/widget/appbar/appbar.dart';
import 'package:sgp/common/widget/texts/section_heading.dart';
import 'package:sgp/utils/constants/sizes.dart';

import '../../../widget/custom_shapes/containers/primary_header_container.dart';
import '../../../widget/tile/setting_menu_tile.dart';
import '../../../widget/tile/user_profile_tile.dart';
import '../profile/profile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
                child: Column(
              children: [
                TAppbar(
                    title: Text('Account',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .apply(color: Colors.white))),
                TUserProfileTile(onPressed: () => Get.to(() => const ProfileScreen())),
                const SizedBox(height: TSizes.spaceBtwSections),
              ],
            )),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TSectionHeading(title: 'Account Settings', showActionButton: false,),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  SettingMenuTile(icon: Iconsax.safe_home, title: 'My Addresses', subtitle: 'Set shopping delivery address', onTap: () {},),
                  SettingMenuTile(icon: Iconsax.shopping_cart, title: 'My Cart', subtitle: 'Add, remove products and move to checkout', onTap: () {},),
                  SettingMenuTile(icon: Iconsax.bag_tick, title: 'My Orders', subtitle: 'In-progress and Completed Orders', onTap: () {},),
                  SettingMenuTile(icon: Iconsax.bank, title: 'My Account', subtitle: 'Withdraw balance to registered bank account', onTap: () {},),
                  SettingMenuTile(icon: Iconsax.discount_shape, title: 'My Coupons', subtitle: 'List of all the discounted coupons', onTap: () {},),
                  SettingMenuTile(icon: Iconsax.notification, title: 'Notification', subtitle: 'Set any kind of notification message', onTap: () {},),
                  SettingMenuTile(icon: Iconsax.security_card, title: 'Account Privacy', subtitle: 'Manage data usage and connected accounts', onTap: () {},),

                  SizedBox(height: TSizes.spaceBtwSections),
                  TSectionHeading(title: 'App Settings', showActionButton: false,),
                  SizedBox(height: TSizes.spaceBtwItems),
                  SettingMenuTile(icon: Iconsax.document_upload, title: 'Load Data', subtitle: 'Upload Datato your Cloud Firbase'),
                  SettingMenuTile(icon: Iconsax.location, title: 'Geolocation', subtitle: 'Set recommendation based on location',trailing: Switch(value: true, onChanged: (value) {})),
                  SettingMenuTile(icon: Iconsax.security_user, title: 'Safe Mode', subtitle: 'Search result is safe for all ages',trailing: Switch(value: false, onChanged: (value) {})),
                  SettingMenuTile(icon: Iconsax.image, title: 'HD Image Quality', subtitle: 'Set image quality to be seen',trailing: Switch(value: false, onChanged: (value) {})),

                  const SizedBox(height: TSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: () {}, child: const Text('Logout')),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections * 2.5),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

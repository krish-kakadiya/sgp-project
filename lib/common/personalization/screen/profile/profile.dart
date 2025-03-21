import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:sgp/common/personalization/screen/profile/widget/profile_menu.dart';
import 'package:sgp/common/widget/appbar/appbar.dart';
import 'package:sgp/common/widget/images/t_circular_image.dart';
import 'package:sgp/common/widget/texts/section_heading.dart';
import 'package:sgp/utils/constants/image_strings.dart';
import 'package:sgp/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppbar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace) ,
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(image: TImages.user, width: 80, height: 80),
                    TextButton(onPressed: () {}, child: const Text('Change Profile Picture')),
                  ],
                ),
              ),

              const SizedBox(height: TSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),
              TSectionHeading(title: 'Profile Information', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),

              TProfileMenu(title: 'Name', value: 'Hardik Hadiya', onPressed: () {}),
              TProfileMenu(title: 'Username', value: 'Hardik_21', onPressed: () {}),

              const SizedBox(height: TSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              TSectionHeading(title: 'Personal Information', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),

              TProfileMenu(title: 'User ID', value: '123', icon: Icons.copy, onPressed: () {}),
              TProfileMenu(title: 'E-mail', value: 'hardikhadiya21@gmail.com', onPressed: () {}),
              TProfileMenu(title: 'Phone Number', value: '+91-9510165071', onPressed: () {}),
              TProfileMenu(title: 'Gender', value: 'Male', onPressed: () {}),
              TProfileMenu(title: 'Date of Birth', value: '21 Aug, 2006', onPressed: () {}),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              Center(
                child: TextButton(onPressed: () {},
                    child: const Text('Close Account',style: TextStyle(color: Colors.red),)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


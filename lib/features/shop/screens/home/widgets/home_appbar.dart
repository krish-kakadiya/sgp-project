import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../../../common/widget/appbar/appbar.dart';
import '../../../../../common/widget/products.cart/cart_menu_icon.dart';
import '../../../../../utils/constants/text_string.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    // Get current user from Firebase Authentication
    final User? user = FirebaseAuth.instance.currentUser;
    final String userName = user?.displayName ?? 'User'; // Fallback to 'Hardik Hadiya'

    return TAppbar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.homeAppbarTitle,
            style: Theme.of(context).textTheme.labelMedium!.apply(color: Colors.black),
          ),
          Text(
            userName, // Display Firebase user name
            style: Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.white),
          ),
        ],
      ),
      actions: [
        TCartCounterIcon(onPressed: () {}, iconColor: Colors.white),
      ],
    );
  }
}

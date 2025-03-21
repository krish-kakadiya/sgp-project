import 'package:flutter/material.dart';

import '../../../../../common/widget/appbar/appbar.dart';
import '../../../../../common/widget/products.cart/cart_menu_icon.dart';
import '../../../../../utils/constants/text_string.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppbar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text(TTexts.homeAppbarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: Colors.black)),
          Text(TTexts.homeAppbarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.white)),

        ],
      ),
      actions: [
        TCartCounterIcon(onPressed: () {}, iconColor: Colors.white),
      ],
    );
  }
}
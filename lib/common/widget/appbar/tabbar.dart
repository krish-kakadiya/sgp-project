import 'package:flutter/material.dart';
import 'package:sgp/utils/device/device_utility.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_function.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget{
  const TTabBar({
    super.key, required this.tabs,
  });

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {

    final dark = THelperFunction.isDarkMode(context);
    return Material(
      child: TabBar(
         tabs: tabs,
          isScrollable: true,
          indicatorColor: TColors.primary,
          unselectedLabelColor: TColors.darkerGrey,
          labelColor: dark ? Colors.white : TColors.primary,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}


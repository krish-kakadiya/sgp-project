import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sgp/utils/constants/colors.dart';

import '../../../utils/constants/sizes.dart';
import '../../../utils/device/device_utility.dart';

class TAppbar extends StatelessWidget implements PreferredSizeWidget {
  const TAppbar({
    super.key,
    this.title,
    this.leadingIcon,
    this.actions,
    this.leadingOnPressed,
    this.showBackArrow = false,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.md),
      child: AppBar(
          automaticallyImplyLeading: false,
          leading: showBackArrow
              ? IconButton(
                  onPressed: () => Get.back(), icon: Icon(Icons.keyboard_double_arrow_left_outlined),color: Colors.grey)
              : leadingIcon != null ? IconButton(
                  onPressed: leadingOnPressed, icon: Icon(Icons.keyboard_double_arrow_left_outlined)) : null,
          title: title,
          actions: actions,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}

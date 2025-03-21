import 'package:flutter/material.dart';
import 'package:sgp/utils/constants/sizes.dart';
import 'package:sgp/utils/helpers/helper_function.dart';

class TCircularIcon extends StatelessWidget {
  const TCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = TSizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: THelperFunction.isDarkMode(context)
            ? Colors.black.withOpacity(0.5)
            : Colors.white.withOpacity(0.5),
      ),
      child: IconButton(onPressed: onPressed, icon: Icon(icon, color: color, size: size)),
    );
  }
}

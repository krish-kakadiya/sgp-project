import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../features/shop/screens/cart/cart_screen.dart';

class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon({
    super.key, required this.onPressed,this.iconColor,
  });

  final VoidCallback onPressed;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CartScreen()),
          );
        }, icon: Icon(Iconsax.shopping_bag,color: iconColor,)),
        Positioned(
          right: 0,
          top: 5,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.7),
                borderRadius: BorderRadius.circular(100)),
            child: Center(
              child: Text("2",style: Theme.of(context).textTheme.labelLarge!.apply(color: Colors.white, fontSizeFactor: 0.8),),
            ),
          ),
        ),

      ],


    );
  }
}
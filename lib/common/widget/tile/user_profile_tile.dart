import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../utils/constants/image_strings.dart';
import '../images/t_circular_image.dart';


class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key, required this.onPressed,
  });

  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: TCircularImage( image: TImages.user, width: 50, height: 50, padding: 0),
      title: Text('Hardik Hadiya', style: Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.white)),
      subtitle: Text('hardikhadiya21@gmail.com', style: Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.white)),
      trailing: IconButton(onPressed: onPressed, icon: const Icon(Iconsax.edit, color: Colors.white)),
    );
  }
}

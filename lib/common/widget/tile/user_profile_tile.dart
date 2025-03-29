import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../utils/constants/image_strings.dart';
import '../images/t_circular_image.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    // Get current user from Firebase Authentication
    final User? user = FirebaseAuth.instance.currentUser;

    return ListTile(
      leading: TCircularImage(
        image: TImages.user, // Static user image (can be changed to dynamic later)
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        user?.displayName ?? 'User', // Display current user’s name or "User"
        style: Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.white),
      ),
      subtitle: Text(
        user?.email ?? 'No email available', // Display email or fallback text
        style: Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.white),
      ),
      trailing: IconButton(
        onPressed: onPressed,
        icon: const Icon(Iconsax.edit, color: Colors.white),
      ),
    );
  }
}

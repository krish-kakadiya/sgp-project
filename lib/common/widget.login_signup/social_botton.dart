import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../utils/constants/image_strings.dart';
import '../../utils/constants/sizes.dart';
import 'package:sgp/features/shop/screens/home/home.dart'; // ✅ Adjust path to HomeScreen

class SocialButton extends StatelessWidget {
  const SocialButton({super.key});

  Future<void> signInWithGoogle(BuildContext context) async {
    try {
      final FirebaseAuth auth = FirebaseAuth.instance;
      final GoogleSignIn googleSignIn = GoogleSignIn();

      // If the user is already signed in, log out first
      if (await googleSignIn.isSignedIn()) {
        await googleSignIn.signOut();
        await auth.signOut();
      }

      // Start sign-in process
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
      if (googleUser == null) {
        print("Google Sign-In Cancelled");
        return;
      }

      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final UserCredential userCredential = await auth.signInWithCredential(credential);
      print("Google Sign-In Success: ${userCredential.user?.displayName}");

      // ✅ Navigate to home.dart after successful login
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    } catch (e) {
      print("Google Sign-In Failed: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () => signInWithGoogle(context), // ✅ Context added for navigation
            icon: const Image(
              width: TSizes.iconMd,
              height: TSizes.iconMd,
              image: AssetImage(TImages.googleLogo),
            ),
          ),
        ),
        const SizedBox(width: TSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {
              print("Facebook Sign-In Clicked");
            },
            icon: const Image(
              width: TSizes.iconMd,
              height: TSizes.iconMd,
              image: AssetImage(TImages.facebookLogo),
            ),
          ),
        )
      ],
    );
  }
}

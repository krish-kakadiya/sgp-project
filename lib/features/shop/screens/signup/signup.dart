import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:sgp/utils/constants/text_string.dart';
import '../../../../common/widget.login_signup/form_divider.dart';
import '../../../../common/widget.login_signup/social_botton.dart';
import '../../../../utils/constants/sizes.dart';
import '../home/home.dart'; // Import home screen

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> signUp() async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );

      // Navigate to home screen after successful signup
      Get.offAll(() => const HomeScreen());

      Get.snackbar("Success", "Account created successfully!",
          snackPosition: SnackPosition.BOTTOM);
    } catch (e) {
      Get.snackbar("Signup Failed", e.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(TTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBtwSections),
              Form(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: firstNameController,
                              decoration: const InputDecoration(
                                  labelText: TTexts.firstName,
                                  prefixIcon: Icon(Iconsax.user)),
                            ),
                          ),
                          const SizedBox(width: TSizes.spaceBtwInputField),
                          Expanded(
                            child: TextFormField(
                              controller: lastNameController,
                              decoration: const InputDecoration(
                                  labelText: TTexts.lastName,
                                  prefixIcon: Icon(Iconsax.user)),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: TSizes.spaceBtwInputField),
                      TextFormField(
                        controller: usernameController,
                        decoration: const InputDecoration(
                            labelText: TTexts.username,
                            prefixIcon: Icon(Iconsax.user_edit)),
                      ),
                      const SizedBox(height: TSizes.spaceBtwInputField),
                      TextFormField(
                        controller: emailController,
                        decoration: const InputDecoration(
                            labelText: TTexts.email,
                            prefixIcon: Icon(Iconsax.direct)),
                      ),
                      const SizedBox(height: TSizes.spaceBtwInputField),
                      TextFormField(
                        controller: phoneController,
                        decoration: const InputDecoration(
                            labelText: TTexts.phoneNo,
                            prefixIcon: Icon(Iconsax.call)),
                      ),
                      const SizedBox(height: TSizes.spaceBtwInputField),
                      TextFormField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                            labelText: TTexts.password,
                            prefixIcon: Icon(Iconsax.lock),
                            suffixIcon: Icon(Iconsax.eye_slash)),
                      ),
                      const SizedBox(height: TSizes.spaceBtwInputField),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: signUp,
                            child: const Text(TTexts.createAccount)),
                      ),
                      const SizedBox(height: TSizes.spaceBtwSections),
                      form_divider(dividerText: TTexts.orSignUpWith.capitalize!),
                      const SizedBox(height: TSizes.spaceBtwSections),
                      const SocialButton(),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

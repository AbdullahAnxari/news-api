
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/styles/spacing_style.dart';
// import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: KSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// LOGO, TITLE & SUB-TITLE
              const Image(
                image: AssetImage(
                  KImages.appLogo,
                ),
              ),
              Text(
                KTexts.loginTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: KSizes.sm),
              Text(
                KTexts.loginSubtitle,
                style: Theme.of(context).textTheme.bodyMedium,
              ),

              /// --FORM
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: KSizes.spaceBtwSections),
                  child: Column(
                    children: [
                      // --EMAIL
                      TextFormField(
                        decoration: const InputDecoration(
                          prefix: Icon(
                            Iconsax.direct_right,
                          ),
                          labelText: KTexts.email,
                        ),
                      ),
                      SizedBox(height: KSizes.spaceBtwInputField),
                      TextFormField(
                        decoration: const InputDecoration(
                          prefix: Icon(
                            Iconsax.password_check,
                          ),
                          suffix: Icon(Iconsax.eye_slash),
                          labelText: KTexts.password,
                        ),
                      ),
                      SizedBox(height: KSizes.spaceBtwInputField / 2),

                      /// --Remember me & Forgot Password
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          /// REMEMBER ME
                          Checkbox(value: true, onChanged: (value) {}),
                          Text(KTexts.rememberMe),

                          ///FORGET PASSWORD
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              KTexts.forgetPassword,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: KSizes.spaceBtwSections),

                      /// --SIGN IN BUTTON
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(KTexts.signIn),
                        ),
                      ),
                      SizedBox(height: KSizes.spaceBtwItems),

                      /// --CREATE ACCOUNT
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(KTexts.createAccount),
                        ),
                      ),
                      SizedBox(height: KSizes.spaceBtwSections),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Divider(
                    // color: dark ? KColors.darkGrey : KColors.grey,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

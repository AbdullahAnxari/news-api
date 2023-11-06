import 'package:flutter/material.dart';
import 'package:get/get.dart';

// import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../controllers/onboarding/onboarding_controller.dart';
import 'widgets/on_boarding_dot_navigation.dart';
import 'widgets/on_boarding_next_button.dart';
import 'widgets/onboarding_pages.dart';
import 'widgets/onboarding_skip.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// --HORIZONTAL SCROLABLE PAGE
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            scrollDirection: Axis.horizontal,
            children: const [
              OnBoardingPage(
                image: KImages.onBoardingImage1,
                title: KTexts.onBoardingTitle1,
                subTitle: KTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: KImages.onBoardingImage2,
                title: KTexts.onBoardingTitle2,
                subTitle: KTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: KImages.onBoardingImage3,
                title: KTexts.onBoardingTitle3,
                subTitle: KTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          /// --SKIP BUTTON
          const OnBoardingSkip(),

          /// --DOT NAVIGATION SMOOTH PAGE INDICATOR
          const OnBoardingDotNavigation(),

          /// --CIRCULAR BUTTON
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}

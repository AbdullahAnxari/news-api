import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_api_app/features/home/screens/home_screen.dart';
import 'package:news_api_app/utils/constants/colors.dart';
import 'package:news_api_app/utils/constants/sizes.dart';
import 'package:news_api_app/localization/getx_localization/languages.dart';
import 'package:news_api_app/utils/helpers/helpers_functions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    KHelperFunctions.navigateToHomeScreen(context);
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/splash_pic.jpg',
            fit: BoxFit.cover,
            height: height * .5,
          ),
          const SizedBox(height: KSizes.defaultSpace),
          Text(
            'splash_text'.tr,
            style:
                GoogleFonts.anton(letterSpacing: .6, color: KColors.splashText),
          ),
          const SizedBox(height: KSizes.defaultSpace),
          const SpinKitChasingDots(color: KColors.blue, size: 40),
        ],
      ),
    );
  }
}

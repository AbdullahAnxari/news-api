import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_api_app/features/authentication/screens/splash/splash_screen.dart';

import 'features/authentication/screens/onboarding/onboarding.dart';
import 'localization/getx_localization/languages.dart';
import 'utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // -- USe this class to setup themes, initialize Bindings, any animations etc
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Languages(),
      locale: Locale('en', 'UK'),
      fallbackLocale: Locale('en', 'UK'),
      themeMode: ThemeMode.system,
      theme: KAppTheme.lightTheme,
      darkTheme: KAppTheme.darkTheme,
      home: const SplashScreen(),
    );
  }
}

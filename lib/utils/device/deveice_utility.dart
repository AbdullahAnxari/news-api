import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
// import 'package:url_launcher/url_launcher.dart';


class KDeviceUtils {
  // --Hide Keyboard
  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  // --Set StatusBar Color
  static Future<void> setStatusBarColor(Color color) async {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: color),
    );
  }

  // -- Land Scape Orientation
  static bool isLandscapeOrientation(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom == 0;
  }

  // -- Portrait Orientation
  static bool isPortraitOrientation(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom != 0;
  }

  // -- Full Screen
  static void setFullScreen(bool enable) {
    SystemChrome.setEnabledSystemUIMode(
        enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge);
  }

  // -- Get Screen Height
  static double getScreenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  // -- Get Screen Width
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  // -- Get Screen Pixel Ratio
  static double getPixelRation() {
    return MediaQuery.of(Get.context!).devicePixelRatio;
  }

  // -- Get Status bar Height
  static double getStatusBarHeight() {
    return MediaQuery.of(Get.context!).padding.top;
  }

  // -- Get Bootom Navigation Bar Height
  static double getBottomNavigationBarHeight() {
    return kBottomNavigationBarHeight;
  }

  // -- App Bar Height
  static double getAppBarHeight() {
    return kToolbarHeight;
  }

  // -- KeyBoard Height
  static double getKeyboardHeight() {
    final viewInsets = MediaQuery.of(Get.context!).viewInsets;
    return viewInsets.bottom;
  }

  // -- KeyBoard Visibility
  static Future<bool> isKeyboardVisible() async {
    final viewInsets = View.of(Get.context!).viewInsets;
    return viewInsets.bottom > 0;
  }

  // -- Physical Device Android or IOS
  static Future<bool> isPhysicaldevice() async {
    return defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS;
  }

  // -- Vibration
  static void vibrate(Duration duration) {
    HapticFeedback.vibrate();
    Future.delayed(duration, () => HapticFeedback.vibrate());
  }
  
  // -- Prefer Orientaion
  static void setPreferedOrientations(List<DeviceOrientation> orientations) async{
    await SystemChrome.setPreferredOrientations(orientations);
  }
  
  // -- Hide Status Bar
  static void hideStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
  }
  
  // -- Internet Connection
  static Future<bool> hasInternetConnection() async{
    try{
      final result = await InternetAddress.lookup('example.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch(_){
      return false;
    }
  }
  
  // -- Is PLatform IOS
  static bool isIOS(){
    return Platform.isIOS;
  }
  
  // -- Is PLatform IOS
  static bool isAndroid(){
    return Platform.isAndroid;
  }

  // Launch URL
//   static void launchUrl(String url) async {
//   if (await canLaunchUrl(url)) {
//     await launchUrl(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }

  
}

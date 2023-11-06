import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:news_api_app/utils/constants/colors.dart';

import '../../features/home/screens/home_screen.dart';

class KHelperFunctions {
  static Color? getColor(String value) {
    //define your product specific colors and it will match the attribute colors and show specific

    if (value == 'Green') {
      return Colors.green;
    } else if (value == 'Red') {
      return Colors.red;
    } else if (value == 'Blue') {
      return Colors.blue;
    } else if (value == 'Pink') {
      return Colors.pink;
    } else if (value == 'Grey') {
      return Colors.grey;
    } else if (value == 'Purple') {
      return Colors.purple;
    } else if (value == 'Black') {
      return Colors.black;
    } else if (value == 'White') {
      return Colors.white;
    } else if (value == 'Yellow') {
      return Colors.yellow;
    } else if (value == 'Orange') {
      return Colors.orange;
    } else if (value == 'Brown') {
      return Colors.brown;
    } else if (value == 'Teal') {
      return Colors.teal;
    } else if (value == 'Indigo') {
      return Colors.indigo;
    } else {
      return null;
    }
  }

  // --Snack Bar
  static void showSnackBar(String message) {
    ScaffoldMessenger.of(Get.context!)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  // --Alert Dialog
  static void showAltert(String title, String message) {
    showDialog(
      context: Get.context!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  // --Navigator
  static void navigateToHomeScreen(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomeScreen()));
    });
  }

  // --Truncate Text (show long text like this with dots...)
  static String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return '${text.substring(0, maxLength)}...';
    }
  }

  // --Dark mode
  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  // --Screen Size
  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  // --Screen Height
  static double screenHeight(BuildContext context) {
    return MediaQuery.of(Get.context!).size.height;
  }

  // --Screen Width
  static double screenWidth(BuildContext context) {
    return MediaQuery.of(Get.context!).size.width;
  }

  // --SpinKit
  static SpinKitCircle spinKit2 = SpinKitCircle(
    color: KColors.blue,
    size: 50,
  );

  // --Formatted Date
  static String getFormatDate(DateTime date, {String format = 'dd MMM YYYY'}) {
    return DateFormat(format).format(date);
  }

  // --Remove duplicates
  static List<T> removeDuplicates<T>(List<T> list) {
    return list.toSet().toList();
  }

  // --Wrap the widgets
  static List<Widget> wrapWidgets(List<Widget> widgets, int rowSize) {
    final wrappedList = <Widget>[];
    for (var i = 0; i < widgets.length; i += rowSize) {
      final rowChildren = widgets.sublist(
          i, i + rowSize > widgets.length ? widgets.length : i + rowSize);
      wrappedList.add(Row(
        children: rowChildren,
      ));
    }
    return wrappedList;
  }
}

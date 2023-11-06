import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_api_app/utils/formatters/formatters.dart';

import '../../../../utils/helpers/helpers_functions.dart';

class NewsCardWidget extends StatelessWidget {
  const NewsCardWidget(
      {super.key,
      required this.title,
      required this.author,
      required this.date});

  final String title;
  final String date;
  final String author;

  @override
  Widget build(BuildContext context) {
    DateTime myDateTime = DateTime.parse(date);

    /// --NEWS SMALL BOTTOM CARD
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        height: KHelperFunctions.screenHeight(context) * 0.22,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          // Align contents to the right
          children: [
            Container(
              width: KHelperFunctions.screenWidth(context) * 0.7,
              child: Text(
                KHelperFunctions.truncateText(
                  title,
                  68,
                ),
                style: GoogleFonts.poppins(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  author,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 90),
                Text(
                  KFormatter.formatDate(myDateTime),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

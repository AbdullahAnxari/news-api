import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../utils/helpers/helpers_functions.dart';

class ImageNewsCard extends StatelessWidget {
  const ImageNewsCard({super.key, required this.imgUrl});

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: KHelperFunctions.screenHeight(context) * 0.6,
      width: KHelperFunctions.screenWidth(context) * .9,
      padding: EdgeInsets.symmetric(
        horizontal: KHelperFunctions.screenHeight(context) * .02,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: CachedNetworkImage(
          imageUrl: imgUrl,
          fit: BoxFit.cover,
          placeholder: (context, url) => Container(
            child: KHelperFunctions.spinKit2,
          ),
          errorWidget: (context, url, error) => Icon(
            Icons.error_outline,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}

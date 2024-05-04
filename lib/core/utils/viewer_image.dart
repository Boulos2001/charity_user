// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../core/Utils/cach_manage.dart';

class ImageViewerWidget extends StatelessWidget {
  const ImageViewerWidget({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: InteractiveViewer(
        child: CachedNetworkImage(
          cacheManager: CachManager.customCachManager,
          imageUrl: image,
          errorWidget: (context, url, _) => Image.asset(
            "assets/png/placeholder.png",
            height: 180,
            width: 80,
            fit: BoxFit.cover,
          ),
          placeholder: (context, url) => Image.asset(
              "assets/png/placeholder.png",
              height: 80,
              width: 80,
              fit: BoxFit.cover),
          fit: BoxFit.contain,
          height: 110,
          width: 110,
        ),
      ),
    );
  }
}

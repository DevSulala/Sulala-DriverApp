import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sulala_driver_app/core/constants/app_images.dart';

networkImageWithFB(String? imageUrl,
    {double? height,
    double? width,
    BoxFit? fit,
    Color? color,
    String placeHolder = AppImages.sulalaDefault}) {
  return imageUrl == null
      ? const AssetImage(AppImages.sulalaDefault)
      : CachedNetworkImage(
          height: height,
          width: width,
          fit: fit,
          imageUrl: imageUrl,
          color: color,
          placeholder: (context, url) => Container(
            height: 30,
            width: 30,
            child: LinearProgressIndicator(
              color: Colors.grey.shade200,
              backgroundColor: Colors.grey.shade100,
            ),
          ),
          errorWidget: (context, url, error) => Image.asset(
            placeHolder,
            height: height,
            width: width,
            fit: fit ?? BoxFit.cover,
          ),
        );
}

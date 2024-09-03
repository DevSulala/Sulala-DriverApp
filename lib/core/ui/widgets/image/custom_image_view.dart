// ignore_for_file: must_be_immutable

import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sulala_driver_app/core/constants/app_images.dart';
import 'package:sulala_driver_app/core/models/image_data.dart';
import 'package:sulala_driver_app/src/data/colors.dart';

class CustomImageView extends StatelessWidget {
  ImageData image;

  ///[svgPath] is required parameter for showing svg image
  String? svgPath;

  ///[file] is required parameter for fetching image file
  File? file;

  double? height;
  double? width;
  Color? color;
  BoxFit? fit;
  final String placeHolder;
  Alignment? alignment;
  VoidCallback? onTap;
  EdgeInsetsGeometry? margin;
  BorderRadius? radius;
  BoxBorder? border;

  ///a [CustomImageView] it can be used for showing any type of images
  /// it will shows the placeholder image if image is not found on network image
  CustomImageView({
    super.key,
    required this.image,
    this.svgPath,
    this.file,
    this.height,
    this.width,
    this.color,
    this.fit,
    this.alignment,
    this.onTap,
    this.radius,
    this.margin,
    this.border,
    this.placeHolder = AppImages.sulalaDefault,
  }) : assert(file == null ||
            image.getAssetPath() == null ||
            image.getUrl() == null);

  factory CustomImageView.notFound() {
    return CustomImageView(
      image: ImageData.fromAsset(AppImages.sulalaDefault),
    );
  }
  factory CustomImageView.fromAsset(String? assetPath) {
    return CustomImageView(
      fit: BoxFit.cover,
      image: assetPath != null && assetPath.isNotEmpty
          ? ImageData.fromAsset(assetPath)
          : ImageData.fromAsset(AppImages.sulalaDefault),
    );
  }
  factory CustomImageView.fromUrl(String? url, {String? svgPath}) {
    return CustomImageView(
      fit: BoxFit.cover,
      image: url != null && url.isNotEmpty
          ? ImageData.fromUrl("http://34.18.54.116:3001$url")
          : ImageData.fromAsset(AppImages.sulalaDefault),
      svgPath: svgPath != null && svgPath.isNotEmpty
          ? "http://34.18.54.116:3001$svgPath"
          : "",
    );
  }

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildWidget(),
          )
        : _buildWidget();
  }

  Widget _buildWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: InkWell(
        onTap: onTap,
        customBorder: radius != null
            ? RoundedRectangleBorder(
                borderRadius: radius!,
              )
            : null,
        child: _renderImage(),
      ),
    );
  }

  ///build the image with border radius
  _renderImage() {
    if (radius != null) {
      return ClipRRect(
        borderRadius: radius ?? BorderRadius.circular(0),
        child: _buildImageWithBorder(),
      );
    } else {
      return _buildImageWithBorder();
    }
  }

  ///build the image with border and border radius style
  _buildImageWithBorder() {
    if (border != null) {
      return Container(
        decoration: BoxDecoration(
          border: border,
          borderRadius: radius,
        ),
        child: _buildImageView(),
      );
    } else {
      return _buildImageView();
    }
  }

  Widget _buildImageView() {
    if (svgPath != null && svgPath!.isNotEmpty) {
      return SizedBox(
        height: height,
        width: width,
        child: SvgPicture.network(
          svgPath!,
          height: height,
          width: width,
          // fit: fit ?? BoxFit.contain,
          color: AppColors.primary40,
        ),
      );
    } else if (file != null && file!.path.isNotEmpty) {
      return Image.file(
        file!,
        height: height,
        width: width,
        fit: fit ?? BoxFit.cover,
        color: color,
      );
    } else if (image.getUrl() != null && image.getUrl()!.isNotEmpty) {
      return CachedNetworkImage(
        height: height,
        width: width,
        fit: fit,
        imageUrl: image.getUrl()!,
        color: color,
        placeholder: (context, url) => Container(
          height: 200,
          width: 200,
          child: LinearProgressIndicator(
            color: Colors.grey.shade200,
            backgroundColor: Colors.grey.shade100,
          ),
        ),
        errorWidget: (context, url, error) => Image.asset(
          AppImages.sulalaDefault,
          height: 200,
          width: 200,
          fit: BoxFit.cover,
        ),
      );
    } else if (image.getAssetPath() != null &&
        image.getAssetPath()!.isNotEmpty) {
      return Image.asset(
        image.getAssetPath()!,
        height: height,
        width: width,
        fit: fit ?? BoxFit.cover,
        color: color,
      );
    }
    return const SizedBox();
  }
}

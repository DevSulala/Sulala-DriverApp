import 'package:flutter/material.dart';
import 'package:sulala_driver_app/core/ui/widgets/image/custom_image_view.dart';

class EmptyStateWidget extends StatelessWidget {
  const EmptyStateWidget({super.key, this.title, this.image});
  final String? title;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 160,
          child: CustomImageView.fromAsset(image),
        ),
        Center(
          child: Text(title ?? "Oops. No data found!"),
        ),
      ],
    );
  }
}

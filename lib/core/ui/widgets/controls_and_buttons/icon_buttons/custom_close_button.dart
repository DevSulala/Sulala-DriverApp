import 'package:flutter/material.dart';
import 'package:sulala_driver_app/core/constants/globals.dart';
import 'package:sulala_driver_app/src/data/colors.dart';

class CustomCloseButton extends StatelessWidget {
  const CustomCloseButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      icon: Container(
          width: SizeConfig.widthMultiplier(context) * 37.5,
          height: SizeConfig.widthMultiplier(context) * 37.5,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.grayscale10,
          ),
          child: const Icon(
            Icons.close_rounded,
            color: AppColors.grayscale90,
          )),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}

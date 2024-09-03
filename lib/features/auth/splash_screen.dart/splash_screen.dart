import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sulala_driver_app/core/constants/globals.dart';
import 'package:sulala_driver_app/src/data/colors.dart';
import 'package:sulala_driver_app/src/screens/data/fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key, this.onboarded});
  final bool? onboarded;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SizedBox(
              width: 375 * SizeConfig.widthMultiplier(context),
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                    24 * SizeConfig.widthMultiplier(context),
                    50 * SizeConfig.heightMultiplier(context),
                    24 * SizeConfig.widthMultiplier(context),
                    0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50 * SizeConfig.heightMultiplier(context),
                    ),
                    Center(
                      child: Image.asset(
                        'assets/graphic/Logotype.png',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    SizedBox(
                      height: 125 * SizeConfig.heightMultiplier(context),
                    ),
                    Text(
                      'Stay Connected'.tr,
                      style: AppFonts.title2(color: AppColors.grayscale90),
                    ),
                    Text(
                      'to your beloved animals'.tr,
                      style: AppFonts.headline1(color: AppColors.grayscale90),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Image.asset(
              'assets/graphic/Splash_p.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}

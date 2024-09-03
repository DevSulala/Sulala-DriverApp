import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:nuts_activity_indicator/nuts_activity_indicator.dart';
import 'package:sulala_driver_app/core/constants/globals.dart';
import 'package:sulala_driver_app/core/helpers/logger.dart';
import 'package:sulala_driver_app/core/network/provider/network_helper.dart';
import 'package:sulala_driver_app/core/providers/riverpod_globals.dart';
import 'package:sulala_driver_app/core/ui/widgets/controls_and_buttons/buttons/primary_button.dart';
import 'package:sulala_driver_app/core/ui/widgets/controls_and_buttons/text_buttons/primary_text_button.dart';
import 'package:sulala_driver_app/core/ui/widgets/inputs/otp_fields/otp_field.dart';
import 'package:sulala_driver_app/core/utils/fcm_token_repository.dart';
import 'package:sulala_driver_app/features/auth/providers/user_providers.dart';
import 'package:sulala_driver_app/src/data/colors.dart';
import 'package:sulala_driver_app/src/screens/data/fonts.dart';
import 'package:http/http.dart' as http;

class ConfirmOTPPage extends ConsumerStatefulWidget {
  const ConfirmOTPPage({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<ConfirmOTPPage> createState() => _ConfirmOTPPageState();
}

class _ConfirmOTPPageState extends ConsumerState<ConfirmOTPPage> {
  late int _remainingSeconds;
  late Timer _timer;
  bool isResendButtonVisible = false;
  bool? otpErrorState;
  PrimaryButtonStatus buttonStatus = PrimaryButtonStatus.disabled;
  TextStatus textStatus = TextStatus.idle;
  bool verifyingOtp = false;

  @override
  void initState() {
    super.initState();
    _remainingSeconds = 60; // Set initial time
    _startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _onOTPFilled(String otp) {
    // Handle OTP filled logic
    _timer.cancel(); // Stop the timer
    setState(() {
      otpErrorState = false;
      buttonStatus = PrimaryButtonStatus.idle; // Set the button status
      isResendButtonVisible = false;
    });
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_remainingSeconds > 0) {
          _remainingSeconds--;
        } else {
          _timer.cancel();
          isResendButtonVisible = true;
        }
      });
    });
  }

  void _resetTimer() {
    _timer.cancel();
    _remainingSeconds = 10;
    _startTimer();
  }

  @override
  Widget build(BuildContext context) {
    final otpRef = ref.watch(otpProvider);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 0.0,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: AppColors.grayscale90,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: _buildContent(),
        floatingActionButton: SizedBox(
          height: SizeConfig.heightMultiplier(context) * 122,
          child: Column(
            children: [
              if (isResendButtonVisible) _buildResendButton(),
              if (!isResendButtonVisible && _timer.isActive) _buildCountdown(),
              SizedBox(
                height: SizeConfig.heightMultiplier(context) * 16,
              ),
              if (isResendButtonVisible)
                _buildConfirmButton(PrimaryButtonStatus.disabled, () {}),
              if (!isResendButtonVisible)
                _buildConfirmButton(buttonStatus, _onConfirmButtonPressed),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }

  Widget _buildContent() {
    final phoneNumber = ref.watch(phoneNumberProvider);
    final email = ref.watch(emailAddressProvider);
    final countryCode = ref.watch(selectedCountryCodeProvider);
    return Padding(
      padding: EdgeInsets.only(
        left: SizeConfig.widthMultiplier(context) * 19,
        right: SizeConfig.widthMultiplier(context) * 19,
        top: SizeConfig.heightMultiplier(context) * 41,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Confirm OTP".tr,
            style: AppFonts.title2(color: AppColors.grayscale90),
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier(context) * 7,
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: phoneNumber.isNotEmpty
                      ? "We sent a verification code on the following\nPhone number: "
                          .tr
                      : "We sent a verification code on the following\nEmail address: "
                          .tr,
                  style: AppFonts.body2(color: AppColors.grayscale70),
                ),
                TextSpan(
                  text: phoneNumber.isNotEmpty ? countryCode : null,
                  style: AppFonts.body2(color: AppColors.primary50),
                ),
                TextSpan(
                  text: phoneNumber.isNotEmpty ? phoneNumber : email,
                  style: AppFonts.body2(color: AppColors.primary50),
                ),
              ],
            ),
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier(context) * 41,
          ),
          SizedBox(
            width: SizeConfig.widthMultiplier(context) * 337,
            child: OTPField(
              onFilled: _onOTPFilled,
              // onError: _isOTPError,
              // onErrorChange: (error) {
              //   setState(() {
              //     otpErrorState = error;
              //   });
              // },
              onChanged: (value) {
                ref.read(otpProvider.notifier).update((_) => value);
              },
            ),
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier(context) * 24,
          ),
          if (verifyingOtp)
            const Center(
                child: NutsActivityIndicator(
              radius: 30,
              activeColor: AppColors.primary50,
            )),
          if (otpErrorState == true)
            Center(
              child: Column(
                children: [
                  Text(
                    "Invalid verification code.".tr,
                    style: AppFonts.caption2(color: AppColors.error100),
                  ),
                  Text(
                    "Please, check the code or resend it again".tr,
                    style: AppFonts.caption2(color: AppColors.error100),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildResendButton() {
    return PrimaryTextButton(
      onPressed: _onResendButtonPressed,
      text: "Send new code".tr,
      status: textStatus,
    );
  }

  Widget _buildCountdown() {
    return Text(
      'sendNewCode'
          .trParams({'seconds': _remainingSeconds.toString().padLeft(2, '0')}),
      style: AppFonts.body1(color: AppColors.grayscale90),
    );
  }

  Widget _buildConfirmButton(
      PrimaryButtonStatus status, VoidCallback onPressed) {
    return SizedBox(
      height: SizeConfig.heightMultiplier(context) * 52,
      width: SizeConfig.widthMultiplier(context) * 343,
      child: PrimaryButton(
        text: "Confirm".tr,
        status: status,
        onPressed: onPressed,
      ),
    );
  }

  void _onResendButtonPressed() {
    setState(() {
      _resetTimer();
      isResendButtonVisible = false;
      buttonStatus = PrimaryButtonStatus.idle;
      otpErrorState = false;
    });
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const ConfirmOTPPage(),
      ),
    );
  }

  Future<void> _onConfirmButtonPressed() async {
    setState(() {
      verifyingOtp = true;
      buttonStatus = PrimaryButtonStatus.loading;
      isResendButtonVisible = true;
    });
    try {
      var phoneNumber = ref.read(phoneNumberProvider);
      var otp = ref.read(otpProvider);
      http.Response response;
      // final fcmToken = await FCMTokenRepository().firebaseToken;

      // if (kDebugMode) {
      //   Logger.info(fcmToken);
      // }
      if (phoneNumber.isNotEmpty) {
        phoneNumber = ref.read(selectedCountryCodeProvider) + phoneNumber;
        response = await NetworkHelper.post(
            '/driver-confirm-otp/',
            {'phone_number': phoneNumber, 'otp': otp},
            // {'phone_number': phoneNumber, 'otp': otp, "device_id": fcmToken},
            false);
      } else {
        response = await NetworkHelper.post(
            '/driver-confirm-otp/',
            {
              'email': ref.read(emailAddressProvider),
              'otp': otp,
              // "device_id": fcmToken
            },
            false);
      }
      final responseData = jsonDecode(response.body) as Map<String, dynamic>;
      if (kDebugMode) {
        print(responseData);
      }
      if (response.statusCode == 200) {
        await NetworkHelper.saveTokens(response);
        ref.invalidate(userProvider);
        context.go('/home');
      } else {
        throw Exception();
      }
    } catch (e) {
      setState(() {
        otpErrorState = true;
      });
    } finally {
      setState(() {
        verifyingOtp = false;
        buttonStatus = PrimaryButtonStatus.idle;
      });
    }
  }
}

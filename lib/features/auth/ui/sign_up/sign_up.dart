import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:sulala_driver_app/core/constants/globals.dart';
import 'package:sulala_driver_app/core/network/provider/network_helper.dart';
import 'package:sulala_driver_app/core/providers/riverpod_globals.dart';
import 'package:sulala_driver_app/core/ui/widgets/controls_and_buttons/buttons/apple_button.dart';
import 'package:sulala_driver_app/core/ui/widgets/controls_and_buttons/buttons/google_button.dart';
import 'package:sulala_driver_app/core/ui/widgets/controls_and_buttons/buttons/primary_button.dart';
import 'package:sulala_driver_app/core/ui/widgets/controls_and_buttons/text_buttons/primary_text_button.dart';
import 'package:sulala_driver_app/core/ui/widgets/inputs/phone_number_field.dart/phone_number_field.dart';
import 'package:sulala_driver_app/core/ui/widgets/inputs/text_fields/primary_text_field.dart';
import 'package:sulala_driver_app/features/auth/providers/user_providers.dart';
import 'package:sulala_driver_app/src/data/colors.dart';
import 'package:sulala_driver_app/src/screens/DriverAccountInformation/driver_information_input.dart';
import 'package:sulala_driver_app/src/screens/data/fonts.dart';

import 'otp_page.dart';

enum SignUpMethod { phoneNumber, emailAddress }

class SignUp extends ConsumerStatefulWidget {
  const SignUp({
    this.farmToJoinId,
    Key? key,
  }) : super(key: key);

  final int? farmToJoinId;

  @override
  ConsumerState<SignUp> createState() => _SignUpState();
}

class _SignUpState extends ConsumerState<SignUp>
    with SingleTickerProviderStateMixin {
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  PrimaryButtonStatus buttonStatus = PrimaryButtonStatus.idle;
  AppleButtonStatus appleButtonStatus = AppleButtonStatus.idle;
  GoogleButtonStatus googleButtonStatus = GoogleButtonStatus.idle;
  TextStatus textStatus = TextStatus.idle;
  bool showEmailField = false;
  bool emailHasError = false;
  String? errorMessage;
  final _formKey = GlobalKey<FormState>();

  String? googleError;

  String? appleError;

  @override
  void dispose() {
    _phoneController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  void _navigateToPhoneOTPPage(Map<String, dynamic> option) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const OTPPage(
          signUpMethod: SignUpMethod.phoneNumber,
        ),
      ),
    );
  }

  void _navigateToEmailOTPPage(Map<String, dynamic> option) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const OTPPage(
          signUpMethod: SignUpMethod.emailAddress,
        ),
      ),
    ).then((value) {
      if (mounted) {
        setState(() {
          buttonStatus = PrimaryButtonStatus.idle;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          scrolledUnderElevation: 0.0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.clear,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ],
        ),
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                width: SizeConfig.widthMultiplier(context) * 375,
                child: Image.asset(
                  "assets/graphic/Animal_p.png",
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: SizeConfig.heightMultiplier(context) * 185,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                          SizeConfig.widthMultiplier(context) * 32,
                        ),
                        topRight: Radius.circular(
                          SizeConfig.widthMultiplier(context) * 32,
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(
                        SizeConfig.widthMultiplier(context) * 16,
                        0,
                        SizeConfig.widthMultiplier(context) * 16,
                        MediaQuery.of(context).viewInsets.bottom,
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: SizeConfig.heightMultiplier(context) * 41,
                          ),
                          Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                Text(
                                  "Welcome to Sulala!".tr,
                                  style: AppFonts.title2(
                                    color: AppColors.grayscale90,
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      8 * SizeConfig.heightMultiplier(context),
                                ),
                                showEmailField
                                    ? Text(
                                        "Enter your Email Address, and we will send you confirmation code"
                                            .tr,
                                        style: AppFonts.headline4(
                                          color: AppColors.grayscale90,
                                        ),
                                      )
                                    : Text(
                                        "Enter your Phone Number, and we will send you confirmation code"
                                            .tr,
                                        style: AppFonts.headline4(
                                          color: AppColors.grayscale90,
                                        ),
                                      ),
                                SizedBox(
                                  height:
                                      40 * SizeConfig.heightMultiplier(context),
                                ),
                                if (showEmailField)
                                  PrimaryTextField(
                                    validator: (value) =>
                                        value?.isNotEmpty == true
                                            ? null
                                            : 'This field is required'.tr,
                                    controller: _emailController,
                                    hintText: 'Enter Email'.tr,
                                    errorMessage: emailHasError == true
                                        ? 'Invalid email address'.tr
                                        : null,
                                    onChanged: (value) {
                                      ref
                                          .read(emailAddressProvider.notifier)
                                          .update((state) => value);
                                    },
                                    onErrorChanged: (hasError) {
                                      setState(() {
                                        emailHasError !=
                                            hasError; // Update the error state
                                      });
                                    },
                                  )
                                else
                                  PhoneNumberField(
                                    validator: (value) =>
                                        value?.isNotEmpty == true
                                            ? null
                                            : 'This field is required'.tr,
                                  ),
                                SizedBox(
                                  height:
                                      SizeConfig.heightMultiplier(context) * 24,
                                ),
                                if (errorMessage != null)
                                  Text(
                                    errorMessage!,
                                    style: const TextStyle(
                                        color: AppColors.error10),
                                  ),
                                SizedBox(
                                  height:
                                      SizeConfig.heightMultiplier(context) * 52,
                                  width: double.infinity,
                                  child: PrimaryButton(
                                    status: buttonStatus,
                                    text: "Continue".tr,
                                    onPressed: () {
                                      setState(() {
                                        buttonStatus =
                                            PrimaryButtonStatus.loading;
                                      });
                                      _register();
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      SizeConfig.heightMultiplier(context) * 41,
                                ),
                                const Divider(
                                  color: AppColors.grayscale20,
                                  thickness: 1,
                                ),
                                SizedBox(
                                  height:
                                      SizeConfig.heightMultiplier(context) * 41,
                                ),
                                if (appleError != null) Text(appleError!),
                                SizedBox(
                                  height:
                                      SizeConfig.heightMultiplier(context) * 52,
                                  width: double.infinity,
                                  child: AppleButton(
                                    status: appleButtonStatus,
                                    onPressed: _continueWithApple,
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      SizeConfig.heightMultiplier(context) * 12,
                                ),
                                if (googleError != null) Text(googleError!),
                                SizedBox(
                                  height:
                                      SizeConfig.heightMultiplier(context) * 52,
                                  width: double.infinity,
                                  child: GoogleButton(
                                    status: googleButtonStatus,
                                    onPressed: _continueWithGoogle,
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      SizeConfig.heightMultiplier(context) * 12,
                                ),
                                PrimaryTextButton(
                                  status: textStatus,
                                  text: showEmailField == false
                                      ? 'Use Email Address'.tr
                                      : 'Use Phone Number'.tr,
                                  onPressed: () {
                                    setState(
                                      () {
                                        showEmailField =
                                            !showEmailField; // Toggle the flag
                                      },
                                    );
                                  },
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).viewInsets.bottom,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _register() async {
    final phoneNumber = ref.read(phoneNumberProvider);

    http.Response response;

    response = await ref.read(userProvider.notifier).register(
        role: widget.farmToJoinId != null ? 'staff_member' : 'owner',
        farmName: ref.read(whatIsTheNameOfYourFarmProvider),
        ownerName: ref.read(whoOwnTheFarmProvider),
        phoneNumber: phoneNumber.isNotEmpty
            ? ref.read(selectedCountryCodeProvider) + phoneNumber
            : null,
        email: ref.read(emailAddressProvider));

    final responseData = jsonDecode(response.body) as Map<String, dynamic>;
    if (response.statusCode == 200) {
      errorMessage = null;
    } else if (response.statusCode == 201) {
      if (kDebugMode) {
        print(responseData['user']);
      }
      errorMessage = null;
    } else {
      errorMessage = responseData['message'] is String
          ? responseData['message']
          : responseData['message']?.values.first ?? 'Something went wrong'.tr;
      if (kDebugMode) {
        print('Status code: ${response.statusCode}');
        print(responseData);
      }
    }
    setState(() {
      buttonStatus = PrimaryButtonStatus.idle;
    });
    if (errorMessage == null) {
      if (phoneNumber.isNotEmpty) {
        _navigateToPhoneOTPPage({});
      } else {
        _navigateToEmailOTPPage({});
      }
    }
  }

  void _continueWithGoogle() async {
    if (googleButtonStatus == GoogleButtonStatus.idle) {
      setState(() {
        buttonStatus = PrimaryButtonStatus.disabled;
        googleButtonStatus = GoogleButtonStatus.loading;
      });
      try {
        await InternetAddress.lookup('google.com');
        final googleUser = await GoogleSignIn().signIn();

        final GoogleSignInAuthentication? googleAuth =
            await googleUser?.authentication;

        if (kDebugMode) {
          print('id token:');
          print(googleAuth?.accessToken);
        }
        final response = await ref.read(userProvider.notifier).login(
              method: LoginMethods.google,
              accessToken: googleAuth?.accessToken,
              farmName: ref.read(whatIsTheNameOfYourFarmProvider),
              ownerName: ref.read(whoOwnTheFarmProvider),
            );
        if (response.statusCode == 200 || response.statusCode == 201) {
          await NetworkHelper.saveTokens(response);
          ref.invalidate(userProvider);
          if (widget.farmToJoinId != null) {
            await NetworkHelper.post(
                '/farms/${widget.farmToJoinId}/create_request_farm/',
                {'farm': widget.farmToJoinId},
                true);
          }
          if (mounted) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const DriverInfoInput()));
          }
        } else {
          setState(() {
            googleError = 'Something went wrong'.tr;
          });
        }
      } catch (error) {
        setState(() {
          googleError = error.toString();
        });
      }
    }
  }

  void _continueWithApple() {
    if (appleButtonStatus == AppleButtonStatus.idle) {
      setState(() {
        buttonStatus = PrimaryButtonStatus.disabled;
        appleButtonStatus = AppleButtonStatus.loading;
      });
      try {
        SignInWithApple.getAppleIDCredential(
          scopes: [
            AppleIDAuthorizationScopes.email,
            AppleIDAuthorizationScopes.fullName,
          ],
          webAuthenticationOptions: WebAuthenticationOptions(
            clientId: 'name.vlad-homenko.sulala.services',
            redirectUri: Uri.parse(
              '${NetworkHelper.kApiBaseUrl}/callbacks/sign_in_with_apple/',
            ),
          ),
        ).then((credential) async {
          final response = await ref.read(userProvider.notifier).login(
                method: LoginMethods.apple,
                code: credential.authorizationCode,
                firstName: credential.givenName,
                lastName: credential.familyName,
                useBundleId: !kIsWeb && (Platform.isIOS || Platform.isMacOS)
                    ? true
                    : false,
                farmName: ref.read(whatIsTheNameOfYourFarmProvider),
                ownerName: ref.read(whoOwnTheFarmProvider),
              );
          if (response.statusCode == 200 || response.statusCode == 201) {
            await NetworkHelper.saveTokens(response);
            ref.invalidate(userProvider);
            if (widget.farmToJoinId != null) {
              await NetworkHelper.post(
                  '/farms/${widget.farmToJoinId}/create_request_farm/',
                  {'farm': widget.farmToJoinId},
                  true);
            }
            if (mounted) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DriverInfoInput()));
            }
          } else {
            setState(() {
              appleError = 'Something went wrong'.tr;
            });
          }
          setState(() {
            appleButtonStatus = AppleButtonStatus.idle;
          });
        });
      } catch (error) {
        setState(() {
          appleError = error.toString();
        });
      }
    }
  }
}

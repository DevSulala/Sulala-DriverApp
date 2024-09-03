import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:sulala_driver_app/core/constants/globals.dart';
import 'package:sulala_driver_app/core/models/error_model.dart';
import 'package:sulala_driver_app/core/network/provider/network_helper.dart';
import 'package:sulala_driver_app/core/providers/riverpod_globals.dart';
import 'package:sulala_driver_app/core/ui/widgets/controls_and_buttons/buttons/apple_button.dart';
import 'package:sulala_driver_app/core/ui/widgets/controls_and_buttons/buttons/google_button.dart';
import 'package:sulala_driver_app/core/ui/widgets/controls_and_buttons/buttons/primary_button.dart';
import 'package:sulala_driver_app/core/ui/widgets/controls_and_buttons/text_buttons/primary_text_button.dart';
import 'package:sulala_driver_app/core/ui/widgets/inputs/phone_number_field.dart/phone_number_field.dart';
import 'package:sulala_driver_app/core/ui/widgets/inputs/text_fields/primary_text_field.dart';
import 'package:sulala_driver_app/features/auth/providers/user_providers.dart';
import 'package:sulala_driver_app/features/auth/ui/sign_up/sign_up.dart';
import 'package:sulala_driver_app/src/data/colors.dart';
import 'package:sulala_driver_app/src/screens/DriverAccountInformation/driver_information_input.dart';
import 'package:sulala_driver_app/src/screens/data/fonts.dart';
import 'package:sulala_driver_app/src/screens/driver_home_page.dart';

import 'confirm_otp_page.dart';
import 'enter_password.dart';

class SignIn extends ConsumerStatefulWidget {
  const SignIn({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<SignIn> createState() => _SignInState();
}

class _SignInState extends ConsumerState<SignIn>
    with SingleTickerProviderStateMixin {
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  PrimaryButtonStatus buttonStatus = PrimaryButtonStatus.idle;
  AppleButtonStatus appleButtonStatus = AppleButtonStatus.idle;
  GoogleButtonStatus googleButtonStatus = GoogleButtonStatus.idle;
  TextStatus textStatus = TextStatus.idle;
  bool showEmailField = false;
  bool emailHasError = false;
  String? savedEmailAddress;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? googleError;
  String? appleError;
  ErrorModel? errorMessage;

  @override
  void dispose() {
    _phoneController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  bool _isValidEmail(String email) {
    final emailRegExp = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
    return emailRegExp.hasMatch(email);
  }

  void _navigateToPhoneOTPPage(Map<String, dynamic> option) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ConfirmOTPPage(),
      ),
    );
  }

  void _navigateToEnterPasswordPage(Map<String, dynamic> option) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EnterPassword(
          emailAddress: _emailController.text,
        ),
      ),
    );
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
          // actions: [
          //   Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: Container(
          //       decoration: const BoxDecoration(
          //         shape: BoxShape.circle,
          //         color: Colors.white,
          //       ),
          //       child: IconButton(
          //         icon: const Icon(
          //           Icons.clear,
          //           color: Colors.black,
          //         ),
          //         onPressed: () {
          //           Navigator.pop(context);
          //         },
          //       ),
          //     ),
          //   ),
          // ],
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
                        SizeConfig.widthMultiplier(context) * 15,
                        0,
                        SizeConfig.widthMultiplier(context) * 15,
                        MediaQuery.of(context).viewInsets.bottom,
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                              height:
                                  SizeConfig.heightMultiplier(context) * 41),
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
                                        SizeConfig.heightMultiplier(context) *
                                            41),
                                if (showEmailField)
                                  _buildEmailFormField()
                                else
                                  PhoneNumberField(
                                    controller: _phoneController,
                                  ),
                                SizedBox(
                                    height:
                                        SizeConfig.heightMultiplier(context) *
                                            24),
                                if (errorMessage != null)
                                  Center(
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.8,
                                      margin: EdgeInsets.only(bottom: 10),
                                      child: Text(
                                        errorMessage?.title ?? "",
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                            color: AppColors.error10),
                                      ),
                                    ),
                                  ),
                                SizedBox(
                                  height:
                                      SizeConfig.heightMultiplier(context) * 52,
                                  width: double.infinity,
                                  child: PrimaryButton(
                                      status: buttonStatus,
                                      text: "Continue".tr,
                                      onPressed: _trySubmitForm),
                                ),
                                SizedBox(
                                    height:
                                        SizeConfig.heightMultiplier(context) *
                                            41),
                                const Divider(
                                  color: AppColors.grayscale20,
                                  thickness: 1,
                                ),
                                SizedBox(
                                    height:
                                        SizeConfig.heightMultiplier(context) *
                                            41),
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
                                        SizeConfig.heightMultiplier(context) *
                                            12),
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
                                        SizeConfig.heightMultiplier(context) *
                                            12),
                                PrimaryTextButton(
                                  status: textStatus,
                                  text: showEmailField == false
                                      ? 'Use email address'.tr
                                      : 'Use phone number'.tr,
                                  onPressed: () {
                                    setState(
                                      () {
                                        showEmailField =
                                            !showEmailField; // Toggle the flag
                                      },
                                    );
                                  },
                                ),
                                SizedBox(
                                    height:
                                        SizeConfig.heightMultiplier(context) *
                                            12),
                                PrimaryTextButton(
                                  status: textStatus,
                                  text: 'Sign up'.tr,
                                  onPressed: () {
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) =>
                                    //             const DriverInfoInput()));
                                    context.push('/signup');
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

  bool _trySubmitForm() {
    final isValid = _formKey.currentState?.validate() ?? false;
    if (isValid) {
      _formKey.currentState?.save();
      // Proceed with submission logic
      setState(() {
        buttonStatus = PrimaryButtonStatus.loading;
      });

      if (showEmailField == false) {
        final phoneNumber =
            ref.read(selectedCountryCodeProvider) + _phoneController.text;
        ref
            .read(userProvider.notifier)
            .login(method: LoginMethods.otp, phoneNumber: phoneNumber)
            .then((response) {
          final responseData =
              jsonDecode(response.body) as Map<String, dynamic>;
          if (response.statusCode == 200) {
            setState(() {
              buttonStatus = PrimaryButtonStatus.idle;
            });
            ref.read(emailAddressProvider.notifier).update((state) => '');
            errorMessage = null;
            _navigateToPhoneOTPPage(
              {
                "phoneNumber": phoneNumber,
                "emailAddress": null,
              },
            );
          } else {
            errorMessage = ErrorModel.fromJson(responseData['error']);
            // ? responseData['message']
            // : responseData['message']?.values.first ??
            //     'Something went wrong'.tr;
            setState(() {
              buttonStatus = PrimaryButtonStatus.idle;
            });
          }
        });
      } else {
        ref.read(phoneNumberProvider.notifier).update((state) => '');
        ref
            .read(emailAddressProvider.notifier)
            .update((state) => _emailController.text);
        setState(() {
          buttonStatus = PrimaryButtonStatus.idle;
        });
        _navigateToEnterPasswordPage(
          {
            "emailAddress": savedEmailAddress,
            "phoneNumber": null,
          },
        );
      }
    }
    return isValid;
  }

  Widget _buildEmailFormField() {
    return PrimaryTextField(
      controller: _emailController,
      hintText: 'Enter email address'.tr,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || value.isEmpty || !_isValidEmail(value)) {
          return 'Please enter a valid email address'.tr;
        }
        return null;
      },
    );
  }

  void _continueWithGoogle() {
    if (googleButtonStatus == GoogleButtonStatus.idle) {
      setState(() {
        buttonStatus = PrimaryButtonStatus.disabled;
        googleButtonStatus = GoogleButtonStatus.loading;
      });
      try {
        GoogleSignIn().signIn().then((googleUser) async {
          final GoogleSignInAuthentication? googleAuth =
              await googleUser?.authentication;

          if (kDebugMode) {
            print('id token:');
            print(googleAuth?.accessToken);
          }
          final response = await ref.read(userProvider.notifier).login(
              method: LoginMethods.google,
              accessToken: googleAuth?.accessToken);
          if (response.statusCode == 200 || response.statusCode == 201) {
            await NetworkHelper.saveTokens(response);
            ref.invalidate(userProvider);
            if (mounted) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DriverHomePage()));
            }
          } else {
            setState(() {
              googleButtonStatus = GoogleButtonStatus.idle;
              googleError = 'Something went wrong'.tr;
            });
          }
        });
      } catch (error) {
        setState(() {
          googleError = error.toString();
        });
      }
    }
    googleButtonStatus = GoogleButtonStatus.idle;
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
            //redirectUri: Uri.parse('https://lofty-juniper-wednesday.glitch.me/callbacks/sign_in_with_apple')
            redirectUri: Uri.parse(
              '${NetworkHelper.kApiBaseUrl}/callbacks/sign_in_with_apple/',
            ),
          ),
        ).then((credential) async {
          final response = await ref.read(userProvider.notifier).login(
              method: LoginMethods.apple,
              code: credential.authorizationCode,
              firstName:
                  credential.givenName != null ? credential.givenName! : '',
              lastName:
                  credential.familyName != null ? credential.familyName! : '',
              useBundleId: !kIsWeb && (Platform.isIOS || Platform.isMacOS)
                  ? true
                  : false);

          // print('response body:');
          // print(response.body);
          if (response.statusCode == 200 || response.statusCode == 201) {
            await NetworkHelper.saveTokens(response);
            ref.invalidate(userProvider);
            if (mounted) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DriverHomePage()));
            }
          } else {
            setState(() {
              appleButtonStatus = AppleButtonStatus.idle;
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
    appleButtonStatus = AppleButtonStatus.idle;
  }
}

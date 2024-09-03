import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:sulala_driver_app/core/constants/globals.dart';
import 'package:sulala_driver_app/core/ui/widgets/controls_and_buttons/buttons/primary_button.dart';
import 'package:sulala_driver_app/core/ui/widgets/inputs/password_fields/password_field.dart';
import 'package:sulala_driver_app/features/auth/providers/user_providers.dart';
import 'package:sulala_driver_app/features/auth/ui/sign_up/create_password.dart';
import 'package:sulala_driver_app/src/data/colors.dart';
import 'package:sulala_driver_app/src/screens/data/fonts.dart';
import 'package:sulala_driver_app/src/screens/driver_home_page.dart';

class EnterPassword extends ConsumerStatefulWidget {
  final String emailAddress;
  const EnterPassword({
    Key? key,
    required this.emailAddress,
  }) : super(key: key);

  @override
  ConsumerState<EnterPassword> createState() => _EnterPasswordState();
}

class _EnterPasswordState extends ConsumerState<EnterPassword> {
  String? enteredPassword;
  String? enteredConfirmPassword;
  PrimaryButtonStatus buttonStatus = PrimaryButtonStatus.idle;
  final _formKey = GlobalKey<FormState>();

  String? errorMessage;

  // void _navigateToEmailOTPPage(Map<String, dynamic> option) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => const ConfirmOTPPage(),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
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
        body: Padding(
          padding: EdgeInsets.only(
            left: SizeConfig.widthMultiplier(context) * 19,
            right: SizeConfig.widthMultiplier(context) * 19,
            top: SizeConfig.heightMultiplier(context) * 40,
          ),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enter Password".tr,
                  style: AppFonts.title2(color: AppColors.grayscale90),
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier(context) * 40,
                ),
                _buildPasswordInputField(),
                // _buildConfirmPasswordInputField(),
              ],
            ),
          ),
        ),
        floatingActionButton: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  errorMessage ?? "",
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: AppColors.error10),
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier(context) * 52,
              child: Column(
                children: [
                  SizedBox(
                    height: SizeConfig.heightMultiplier(context) * 52,
                    width: SizeConfig.widthMultiplier(context) * 343,
                    child: PrimaryButton(
                        text: "Confirm".tr,
                        status: buttonStatus,
                        onPressed: () {
                          if (_validateForm()) {
                            _confirm();
                          }
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }

  bool _validateForm() {
    return _formKey.currentState?.validate() ?? false;
  }

  Widget _buildPasswordInputField() {
    return PasswordField(
        hintText: 'Password'.tr,
        validator: (value) {
          if (value == null || value.isEmpty || value.length < 8) {
            return 'Password must be at least 8 characters long'.tr;
          }
          if (!RegExp(r'[0-9]').hasMatch(value)) {
            return 'Password must contain at least one number'.tr;
          }
          return null;
        },
        onChanged: (value) => enteredPassword = value);
  }

  Widget _buildConfirmPasswordInputField() {
    return PasswordField(
      hintText: 'Confirm Password'.tr,
      validator: (value) {
        if (value != enteredPassword) {
          return 'Passwords do not match'.tr;
        }
        return null;
      },
    );
  }

  void _confirm() {
    setState(() {
      buttonStatus = PrimaryButtonStatus.loading;
    });
    ref
        .read(userProvider.notifier)
        .login(
            method: LoginMethods.email,
            email: widget.emailAddress,
            password: enteredPassword)
        .then((response) async {
      setState(() {
        buttonStatus = PrimaryButtonStatus.idle;
      });
      if (response.statusCode == 200) {
        if (mounted) {
          setState(() {
            buttonStatus = PrimaryButtonStatus.idle;
          });
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const DriverHomePage()));
        }
      } else if (response.statusCode == 400) {
        final body = jsonDecode(response.body);
        if (body["ERR_CODE"] == "PASSWORD_NOT_SET") {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const CreatePassword()));
        } else {
          errorMessage = body['message'] ?? 'Something went wrong'.tr;
        }
      } else if (mounted) {
        final body = jsonDecode(response.body);
        setState(() {
          buttonStatus = PrimaryButtonStatus.idle;
          errorMessage = body['message'] ?? 'Something went wrong'.tr;
        });
      }
    });
  }
}

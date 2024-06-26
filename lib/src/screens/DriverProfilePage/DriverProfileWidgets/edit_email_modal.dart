// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:sulala_driver_app/src/data/colors.dart';
import '../../data/fonts.dart';

class EditEmailWidget extends StatefulWidget {
  final String email;
  final Function(String) onSave;

  const EditEmailWidget({super.key, required this.email, required this.onSave});

  @override
  _EditEmailWidgetState createState() => _EditEmailWidgetState();
}

class _EditEmailWidgetState extends State<EditEmailWidget> {
  late TextEditingController _emailController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController(text: widget.email);
  }

  void _showEditEmailModal(BuildContext context) {
    showModalBottomSheet(
      showDragHandle: true,
      backgroundColor: AppColors.grayscale00,
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Edit Email',
                    style: AppFonts.title4(color: AppColors.grayscale90),
                  ),
                  const SizedBox(height: 25),
                  Text(
                    'Email',
                    style: AppFonts.headline4(color: AppColors.grayscale90),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          50.0), // Adjust border radius here
                      border: Border.all(
                        color: AppColors.primary30, // Outline color
                      ),
                      color: Colors.white, // Background color
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        controller: _emailController,
                        style: AppFonts.body2(color: AppColors.grayscale90),
                        decoration: InputDecoration(
                          hintStyle:
                              AppFonts.body1(color: AppColors.grayscale50),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'Cancel',
                          style: AppFonts.headline4(color: AppColors.error100),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: AppColors.primary40,
                          // padding:
                          //     const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        onPressed: () {
                          widget.onSave(_emailController.text);
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'Save',
                          style: AppFonts.body1(color: AppColors.grayscale00),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.email,
          style: AppFonts.body2(color: AppColors.grayscale70),
        ),
        const SizedBox(width: 5),
        InkWell(
          onTap: () {
            _showEditEmailModal(context);
          },
          child: const Icon(
            Icons.edit,
            size: 16,
            color: AppColors.primary30,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sulala_driver_app/src/data/colors.dart';

import '../../data/fonts.dart';

class DriverInfoModal extends StatefulWidget {
  final String licenseNumber;
  final String expirationDate;
  final Function(String, String) onSave;

  const DriverInfoModal({
    super.key,
    required this.licenseNumber,
    required this.expirationDate,
    required this.onSave,
  });

  @override
  // ignore: library_private_types_in_public_api
  _DriverInfoModalState createState() => _DriverInfoModalState();

  static void show(BuildContext context, String licenseNumber,
      String expirationDate, Function(String, String) onSave) {
    showModalBottomSheet(
      showDragHandle: true,
      backgroundColor: AppColors.grayscale00,
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return DriverInfoModal(
          licenseNumber: licenseNumber,
          expirationDate: expirationDate,
          onSave: onSave,
        );
      },
    );
  }
}

class _DriverInfoModalState extends State<DriverInfoModal> {
  late TextEditingController _licenseController;
  late TextEditingController _expirationController;

  @override
  void initState() {
    super.initState();
    _licenseController = TextEditingController(text: widget.licenseNumber);
    _expirationController = TextEditingController(text: widget.expirationDate);
  }

  @override
  void dispose() {
    _licenseController.dispose();
    _expirationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                'Driver Information',
                style: AppFonts.title4(color: AppColors.grayscale90),
              ),
              const SizedBox(height: 25),
              Text(
                'License Number',
                style: AppFonts.headline4(color: AppColors.grayscale90),
              ),
              const SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(50.0), // Adjust border radius here
                  border: Border.all(
                    color: AppColors.primary30, // Outline color
                  ),
                  color: Colors.white, // Background color
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    controller: _licenseController,
                    style: AppFonts.caption2(color: AppColors.grayscale90),
                    decoration: InputDecoration(
                      hintStyle: AppFonts.body1(color: AppColors.grayscale50),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Expiration Date',
                style: AppFonts.headline4(color: AppColors.grayscale90),
              ),
              const SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(50.0), // Adjust border radius here
                  border: Border.all(
                    color: AppColors.primary30, // Outline color
                  ),
                  color: Colors.white, // Background color
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    controller: _expirationController,
                    style: AppFonts.caption2(color: AppColors.grayscale90),
                    decoration: InputDecoration(
                      hintStyle: AppFonts.body1(color: AppColors.grayscale50),
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
                      widget.onSave(
                          _licenseController.text, _expirationController.text);
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
  }
}

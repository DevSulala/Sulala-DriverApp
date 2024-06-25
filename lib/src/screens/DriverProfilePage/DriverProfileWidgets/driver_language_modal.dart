// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import '../../../data/colors.dart';
import '../../data/fonts.dart';

class LanguageAndRegionModal extends StatefulWidget {
  final String selectedLanguage;
  final List<String> languages;
  final Function(String) onSave;

  const LanguageAndRegionModal({
    super.key,
    required this.selectedLanguage,
    required this.languages,
    required this.onSave,
  });

  @override
  _LanguageAndRegionModalState createState() => _LanguageAndRegionModalState();

  static void show(BuildContext context, String selectedLanguage,
      List<String> languages, Function(String) onSave) {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.grayscale00,
      showDragHandle: true,
      isScrollControlled: true,
      builder: (context) {
        return LanguageAndRegionModal(
          selectedLanguage: selectedLanguage,
          languages: languages,
          onSave: onSave,
        );
      },
    );
  }
}

class _LanguageAndRegionModalState extends State<LanguageAndRegionModal> {
  late String _selectedLanguage;

  @override
  void initState() {
    super.initState();
    _selectedLanguage = widget.selectedLanguage;
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
                'Language',
                style: AppFonts.title4(color: AppColors.grayscale90),
              ),
              const SizedBox(height: 25),
              Text(
                'Select Language',
                style: AppFonts.headline4(color: AppColors.grayscale70),
              ),
              const SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(50.0), // Adjust border radius here
                  border: Border.all(
                    color: AppColors.primary40, // Outline color
                  ),
                  color: Colors.white, // Background color
                ),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: DropdownButtonFormField<String>(
                  dropdownColor: AppColors.grayscale00,
                  value: _selectedLanguage,
                  decoration: const InputDecoration(border: InputBorder.none),
                  items: widget.languages.map((language) {
                    return DropdownMenuItem<String>(
                      value: language,
                      child: Text(
                        language,
                        style: AppFonts.headline4(color: AppColors.grayscale90),
                      ),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedLanguage = value!;
                    });
                  },
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
                      widget.onSave(_selectedLanguage);
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

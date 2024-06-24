// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class LanguageAndRegionModal extends StatefulWidget {
  final String selectedLanguage;
  final List<String> languages;
  final Function(String) onSave;

  const LanguageAndRegionModal({super.key, 
    required this.selectedLanguage,
    required this.languages,
    required this.onSave,
  });

  @override
  _LanguageAndRegionModalState createState() => _LanguageAndRegionModalState();

  static void show(BuildContext context, String selectedLanguage, List<String> languages, Function(String) onSave) {
    showModalBottomSheet(
      context: context,
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
              const Text(
                'Language and Region',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              DropdownButtonFormField<String>(
                value: _selectedLanguage,
                decoration: const InputDecoration(
                  labelText: 'Select Language',
                ),
                items: widget.languages.map((language) {
                  return DropdownMenuItem<String>(
                    value: language,
                    child: Text(language),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedLanguage = value!;
                  });
                },
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Cancel'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      widget.onSave(_selectedLanguage);
                      Navigator.of(context).pop();
                    },
                    child: const Text('Save'),
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

import 'package:flutter/material.dart';

class DriverInfoModal extends StatefulWidget {
  final String licenseNumber;
  final String expirationDate;
  final Function(String, String) onSave;

  const DriverInfoModal({super.key, 
    required this.licenseNumber,
    required this.expirationDate,
    required this.onSave,
  });

  @override
  // ignore: library_private_types_in_public_api
  _DriverInfoModalState createState() => _DriverInfoModalState();

  static void show(BuildContext context, String licenseNumber, String expirationDate, Function(String, String) onSave) {
    showModalBottomSheet(
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
              const Text(
                'Driver Information',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _licenseController,
                decoration: const InputDecoration(
                  labelText: 'License Number',
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _expirationController,
                decoration: const InputDecoration(
                  labelText: 'Expiration Date',
                ),
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
                      widget.onSave(_licenseController.text, _expirationController.text);
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

import 'package:flutter/material.dart';

import '../../../data/colors.dart';
import '../../data/fonts.dart';

class VehicleInfoModal extends StatefulWidget {
  final String selectedVehicle;
  final String registrationNumber;
  final List<String> vehicles;
  final Function(String, String) onSave;

  const VehicleInfoModal({
    super.key,
    required this.selectedVehicle,
    required this.registrationNumber,
    required this.vehicles,
    required this.onSave,
  });

  @override
  // ignore: library_private_types_in_public_api
  _VehicleInfoModalState createState() => _VehicleInfoModalState();

  static void show(
      BuildContext context,
      String selectedVehicle,
      String registrationNumber,
      List<String> vehicles,
      Function(String, String) onSave) {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.grayscale00,
      showDragHandle: true,
      isScrollControlled: true,
      builder: (context) {
        return VehicleInfoModal(
          selectedVehicle: selectedVehicle,
          registrationNumber: registrationNumber,
          vehicles: vehicles,
          onSave: onSave,
        );
      },
    );
  }
}

class _VehicleInfoModalState extends State<VehicleInfoModal> {
  late TextEditingController _registrationController;
  late String _selectedVehicle;

  @override
  void initState() {
    super.initState();
    _selectedVehicle = widget.selectedVehicle;
    _registrationController =
        TextEditingController(text: widget.registrationNumber);
  }

  @override
  void dispose() {
    _registrationController.dispose();
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
                'Vehicle Information',
                style: AppFonts.title4(color: AppColors.grayscale90),
              ),
              const SizedBox(height: 20),
              Text(
                'Select Vehicle',
                style: AppFonts.caption1(color: AppColors.grayscale70),
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
                  value: _selectedVehicle,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                  items: widget.vehicles.map((vehicle) {
                    return DropdownMenuItem<String>(
                      value: vehicle,
                      child: Text(
                        vehicle,
                        style: AppFonts.headline4(color: AppColors.grayscale70),
                      ),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedVehicle = value!;
                    });
                  },
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Registration Number',
                style: AppFonts.caption2(color: AppColors.grayscale90),
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
                    controller: _registrationController,
                    style: AppFonts.headline4(color: AppColors.grayscale70),
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
                          _selectedVehicle, _registrationController.text);
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

import 'package:flutter/material.dart';

class VehicleInfoModal extends StatefulWidget {
  final String selectedVehicle;
  final String registrationNumber;
  final List<String> vehicles;
  final Function(String, String) onSave;

  const VehicleInfoModal({super.key, 
    required this.selectedVehicle,
    required this.registrationNumber,
    required this.vehicles,
    required this.onSave,
  });

  @override
  // ignore: library_private_types_in_public_api
  _VehicleInfoModalState createState() => _VehicleInfoModalState();

  static void show(BuildContext context, String selectedVehicle, String registrationNumber, List<String> vehicles, Function(String, String) onSave) {
    showModalBottomSheet(
      context: context,
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
    _registrationController = TextEditingController(text: widget.registrationNumber);
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
              const Text(
                'Vehicle Information',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              DropdownButtonFormField<String>(
                value: _selectedVehicle,
                decoration: const InputDecoration(
                  labelText: 'Select Vehicle',
                ),
                items: widget.vehicles.map((vehicle) {
                  return DropdownMenuItem<String>(
                    value: vehicle,
                    child: Text(vehicle),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedVehicle = value!;
                  });
                },
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _registrationController,
                decoration: const InputDecoration(
                  labelText: 'Registration Number',
                ),
                onChanged: (value) {
                  setState(() {
                    // No need to call setState for controller's text change
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
                      widget.onSave(_selectedVehicle, _registrationController.text);
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

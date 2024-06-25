import 'package:flutter/material.dart';
import 'package:sulala_driver_app/src/data/colors.dart';

import '../../data/fonts.dart';

class AvailabilityModal extends StatefulWidget {
  final String selectedTimeSlot;
  final List<String> timeSlots;
  final Function(String, String) onSave;

  const AvailabilityModal({
    super.key,
    required this.selectedTimeSlot,
    required this.timeSlots,
    required this.onSave,
  });

  @override
  // ignore: library_private_types_in_public_api
  _AvailabilityModalState createState() => _AvailabilityModalState();

  static void show(BuildContext context, String selectedTimeSlot,
      List<String> timeSlots, Function(String, String) onSave) {
    showModalBottomSheet(
      backgroundColor: AppColors.grayscale00,
      showDragHandle: true,
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return AvailabilityModal(
          selectedTimeSlot: selectedTimeSlot,
          timeSlots: timeSlots,
          onSave: onSave,
        );
      },
    );
  }
}

class _AvailabilityModalState extends State<AvailabilityModal> {
  late String _selectedTimeSlot;

  @override
  void initState() {
    super.initState();
    _selectedTimeSlot = widget.selectedTimeSlot;
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
                'Select Your Shift',
                style: AppFonts.title4(color: AppColors.grayscale90),
              ),
              const SizedBox(height: 25),
              Text(
                'Shift Timings',
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
                  value: _selectedTimeSlot,
                  decoration: const InputDecoration(border: InputBorder.none),
                  items: widget.timeSlots.map((slot) {
                    return DropdownMenuItem<String>(
                      value: slot,
                      child: Text(
                        slot,
                        style: AppFonts.headline4(color: AppColors.grayscale70),
                      ),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedTimeSlot = value!;
                      _updateCurrentStatus();
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
                      widget.onSave(_selectedTimeSlot, _currentStatus());
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

  void _updateCurrentStatus() {
    // This method can be used to update the state based on the selected time slot
  }

  String _currentStatus() {
    final now = TimeOfDay.now();
    final selectedRange = _selectedTimeSlot.split(' - ');
    final startTime = _parseTime(selectedRange[0]);
    final endTime = _parseTime(selectedRange[1]);

    if ((now.hour >= startTime.hour && now.minute >= startTime.minute) &&
        (now.hour < endTime.hour ||
            (now.hour == endTime.hour && now.minute <= endTime.minute))) {
      return 'Online';
    } else {
      return 'Offline';
    }
  }

  TimeOfDay _parseTime(String time) {
    final period = time.substring(time.length - 2).toLowerCase();
    final parts =
        time.substring(0, time.length - 2).split(':').map(int.parse).toList();
    if (period == 'pm' && parts[0] != 12) {
      parts[0] += 12;
    }
    if (period == 'am' && parts[0] == 12) {
      parts[0] = 0;
    }
    return TimeOfDay(hour: parts[0], minute: parts.length > 1 ? parts[1] : 0);
  }
}

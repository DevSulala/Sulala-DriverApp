import 'package:flutter/material.dart';

class ScheduleModal extends StatefulWidget {
  final String selectedTimeSlot;
  final List<String> timeSlots;
  final Function(String, String) onSave;

  const ScheduleModal({super.key, 
    required this.selectedTimeSlot,
    required this.timeSlots,
    required this.onSave,
  });

  @override
  // ignore: library_private_types_in_public_api
  _ScheduleModalState createState() => _ScheduleModalState();

  static void show(BuildContext context, String selectedTimeSlot, List<String> timeSlots, Function(String, String) onSave) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return ScheduleModal(
          selectedTimeSlot: selectedTimeSlot,
          timeSlots: timeSlots,
          onSave: onSave,
        );
      },
    );
  }
}

class _ScheduleModalState extends State<ScheduleModal> {
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
              const Text(
                'Set Availability',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              DropdownButtonFormField<String>(
                value: _selectedTimeSlot,
                decoration: const InputDecoration(
                  labelText: 'Select Time Slot',
                ),
                items: widget.timeSlots.map((slot) {
                  return DropdownMenuItem<String>(
                    value: slot,
                    child: Text(slot),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedTimeSlot = value!;
                    _updateCurrentStatus();
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
                      widget.onSave(_selectedTimeSlot, _currentStatus());
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

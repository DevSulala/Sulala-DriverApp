import 'package:flutter/material.dart';

class NotificationPreferencesModal extends StatefulWidget {
  final bool newOrders;
  final bool sameLocationOrders;
  final bool reviewReceived;
  final bool muteAll;
  final Function(bool, bool, bool, bool) onSave;

  const NotificationPreferencesModal({super.key, 
    required this.newOrders,
    required this.sameLocationOrders,
    required this.reviewReceived,
    required this.muteAll,
    required this.onSave,
  });

  @override
  // ignore: library_private_types_in_public_api
  _NotificationPreferencesModalState createState() => _NotificationPreferencesModalState();

  static void show(BuildContext context, bool newOrders, bool sameLocationOrders, bool reviewReceived, bool muteAll, Function(bool, bool, bool, bool) onSave) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return NotificationPreferencesModal(
          newOrders: newOrders,
          sameLocationOrders: sameLocationOrders,
          reviewReceived: reviewReceived,
          muteAll: muteAll,
          onSave: onSave,
        );
      },
    );
  }
}

class _NotificationPreferencesModalState extends State<NotificationPreferencesModal> {
  late bool _newOrders;
  late bool _sameLocationOrders;
  late bool _reviewReceived;
  late bool _muteAll;

  @override
  void initState() {
    super.initState();
    _newOrders = widget.newOrders;
    _sameLocationOrders = widget.sameLocationOrders;
    _reviewReceived = widget.reviewReceived;
    _muteAll = widget.muteAll;
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
                'Notification Preferences',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              SwitchListTile(
                title: const Text('New Orders'),
                value: _newOrders,
                onChanged: (value) {
                  setState(() {
                    _newOrders = value;
                  });
                },
              ),
              SwitchListTile(
                title: const Text('Same Location Orders'),
                value: _sameLocationOrders,
                onChanged: (value) {
                  setState(() {
                    _sameLocationOrders = value;
                  });
                },
              ),
              SwitchListTile(
                title: const Text('Review Received'),
                value: _reviewReceived,
                onChanged: (value) {
                  setState(() {
                    _reviewReceived = value;
                  });
                },
              ),
              SwitchListTile(
                title: const Text('Mute All'),
                value: _muteAll,
                onChanged: (value) {
                  setState(() {
                    _muteAll = value;
                    if (value) {
                      _newOrders = false;
                      _sameLocationOrders = false;
                      _reviewReceived = false;
                    }
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
                      widget.onSave(_newOrders, _sameLocationOrders, _reviewReceived, _muteAll);
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

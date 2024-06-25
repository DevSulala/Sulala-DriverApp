import 'package:flutter/material.dart';

import '../../../data/colors.dart';
import '../../data/fonts.dart';

class NotificationPreferencesModal extends StatefulWidget {
  final bool newOrders;
  final bool sameLocationOrders;
  final bool reviewReceived;
  final bool muteAll;
  final Function(bool, bool, bool, bool) onSave;

  const NotificationPreferencesModal({
    super.key,
    required this.newOrders,
    required this.sameLocationOrders,
    required this.reviewReceived,
    required this.muteAll,
    required this.onSave,
  });

  @override
  // ignore: library_private_types_in_public_api
  _NotificationPreferencesModalState createState() =>
      _NotificationPreferencesModalState();

  static void show(
      BuildContext context,
      bool newOrders,
      bool sameLocationOrders,
      bool reviewReceived,
      bool muteAll,
      Function(bool, bool, bool, bool) onSave) {
    showModalBottomSheet(
      showDragHandle: true,
      backgroundColor: AppColors.grayscale00,
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

class _NotificationPreferencesModalState
    extends State<NotificationPreferencesModal> {
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
              Text(
                'Notification Preferences',
                style: AppFonts.title4(color: AppColors.grayscale90),
              ),
              const SizedBox(height: 20),
              SwitchListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'Mute All',
                  style: AppFonts.headline4(color: AppColors.grayscale90),
                ),
                value: _muteAll,
                activeColor: AppColors.grayscale00,
                inactiveTrackColor: AppColors.grayscale10,
                activeTrackColor: AppColors.primary30,
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
              SwitchListTile(
                activeColor: AppColors.grayscale00,
                inactiveTrackColor: AppColors.grayscale10,
                activeTrackColor: AppColors.primary30,
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'New Orders',
                  style: AppFonts.headline3(color: AppColors.grayscale90),
                ),
                value: _newOrders,
                onChanged: (value) {
                  setState(() {
                    _newOrders = value;
                  });
                },
              ),
              SwitchListTile(
                contentPadding: EdgeInsets.zero,
                activeColor: AppColors.grayscale00,
                inactiveTrackColor: AppColors.grayscale10,
                activeTrackColor: AppColors.primary30,
                title: Text(
                  'Same Location Orders',
                  style: AppFonts.headline4(color: AppColors.grayscale90),
                ),
                value: _sameLocationOrders,
                onChanged: (value) {
                  setState(() {
                    _sameLocationOrders = value;
                  });
                },
              ),
              SwitchListTile(
                contentPadding: EdgeInsets.zero,
                activeColor: AppColors.grayscale00,
                inactiveTrackColor: AppColors.grayscale10,
                activeTrackColor: AppColors.primary30,
                title: Text(
                  'Review Received',
                  style: AppFonts.headline4(color: AppColors.grayscale90),
                ),
                value: _reviewReceived,
                onChanged: (value) {
                  setState(() {
                    _reviewReceived = value;
                  });
                },
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
                      widget.onSave(_newOrders, _sameLocationOrders,
                          _reviewReceived, _muteAll);
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

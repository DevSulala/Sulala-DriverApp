import 'package:flutter/material.dart';


import '../../data/colors.dart';
import '../data/fonts.dart';

class DriverDeliveryTimeStatusChip extends StatelessWidget {
  final String status;

  const DriverDeliveryTimeStatusChip({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    final Map<String, Color> statusColors = {
      'Before Time': AppColors.secondary30,
      'On Time': AppColors.primary20,
      'Late': AppColors.error100,
      // Add more status-color pairs as needed
    };

    // Get the color corresponding to the status
    final Color chipColor =
        statusColors.containsKey(status) ? statusColors[status]! : Colors.grey;

    // Determine font color based on status
    final Color fontColor = status == 'Late' || status == 'On Time'
        ? Colors.white
        : AppColors.grayscale90;

    return Chip(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20), // Adjust the radius as needed
        side: const BorderSide(
            color: Colors.transparent), // Make outline transparent
      ),
      backgroundColor: chipColor,
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
      ), // Adjust padding as needed
      label: Text(
        status,
        style: AppFonts.caption1(
          color: fontColor, // Set font color based on status
        ),
      ),
    );
  }
}

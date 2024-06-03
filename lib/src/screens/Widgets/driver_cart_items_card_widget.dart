// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../data/colors.dart';
import '../data/fonts.dart';

class DriverCartItemCard extends StatefulWidget {
  final String imagePath;
  final String productName;
  final double price;
  int quantity;
  int discountprice;
  final Function(int) onQuantityChanged;
  final Function() onDelete; // Add onDelete callback

  DriverCartItemCard({
    super.key,
    required this.imagePath,
    required this.productName,
    required this.price,
    required this.quantity,
    required this.discountprice,
    required this.onQuantityChanged,
    required this.onDelete, // Accept onDelete callback
  });
  @override
  State<DriverCartItemCard> createState() => _DriverCartItemCardState();
}

class _DriverCartItemCardState extends State<DriverCartItemCard> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12), // Adjust the radius as needed
      child: IntrinsicHeight(
        child: SizedBox(
          child: Card(
            elevation: 0,
            color: AppColors.grayscale0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${widget.quantity.toStringAsFixed(0)} Item',
                    style: AppFonts.caption3(color: AppColors.grayscale60),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 0,
                          child: Image.asset(
                            widget.imagePath,
                            width: 80,
                            height: 80,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                widget.productName,
                                style: AppFonts.caption2(
                                    color: AppColors.grayscale100),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 15),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  '\$${widget.price * widget.quantity}',
                                  style: AppFonts.headline4(
                                      color: AppColors.primary40),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sulala_driver_app/src/data/colors.dart';

enum OrderStatus { NEW, DELIVERED, CANCELLED, IN_DELIVERY }

extension OrderStatusExtension on OrderStatus {
  Color get color {
    switch (this) {
      case OrderStatus.NEW:
        return AppColors.secondary50;
      case OrderStatus.DELIVERED:
        return AppColors.primary30;
      case OrderStatus.CANCELLED:
        return AppColors.error100;
      case OrderStatus.IN_DELIVERY:
        return const Color.fromRGBO(172, 236, 193, 1);
      default:
        return Colors.grey; // Default color for unknown statuses
    }
  }

  Color get fontColor {
    switch (this) {
      case OrderStatus.DELIVERED:
      case OrderStatus.CANCELLED:
        return Colors.white;

      default:
        return AppColors.grayscale90;
    }
  }
}

OrderStatus getOrderStatusEnum(String status) {
  switch (status) {
    case 'NEW':
      return OrderStatus.NEW;
    case 'DELIVERED':
      return OrderStatus.DELIVERED;
    case 'CANCELLED':
      return OrderStatus.CANCELLED;
    case 'IN_DELIVERY':
      return OrderStatus.IN_DELIVERY;

    default:
      return OrderStatus.NEW;
  }
}

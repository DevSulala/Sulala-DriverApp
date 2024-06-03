import 'package:flutter/material.dart';

import '../../data/colors.dart';
import '../../data/dummy_data.dart';
import '../Widgets/driver_order_status_chip_widget.dart';
import '../Widgets/new_orders_filter_modal.dart';

import '../data/fonts.dart';
import 'driver_neworder_details.dart';

class DriverNewOrders extends StatefulWidget {
  const DriverNewOrders({super.key});

  @override
  State<DriverNewOrders> createState() => _DriverNewOrdersState();
}

class _DriverNewOrdersState extends State<DriverNewOrders> {
  bool _isDialogShown = false;
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _checkForOrdersWithSameAddress();
    });
    return Scrollbar(
      radius: const Radius.circular(20),
      thickness: 3,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text('New Orders',
                        style: AppFonts.title4(color: AppColors.grayscale90)),
                  ),
                  Expanded(
                    flex: 0,
                    child: GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          backgroundColor: Colors.white,
                          showDragHandle: true,
                          isScrollControlled:
                              true, // Set to true to allow the bottom sheet to occupy full screen height
                          context: context,
                          builder: (BuildContext context) {
                            return SizedBox(
                              height: MediaQuery.of(context).size.height *
                                  0.8, // Adjust height as needed
                              child: const FilterNewOrdersModal(
                                showPaymentStatusFilter: false,
                              ),
                            );
                          },
                        );
                      },
                      child: Row(
                        children: [
                          const Icon(
                            Icons.filter_list,
                            color: AppColors.primary50,
                          ),
                          Text(
                            'Filters',
                            style: AppFonts.body1(color: AppColors.primary40),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 2, // Adjust aspect ratio as needed
              ),
              itemCount: driverNewOrderList.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final neworder = driverNewOrderList[index];

                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OrderDetailsPage(order: neworder),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(color: AppColors.grayscale20),
                        color: AppColors.grayscale00,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        neworder.deliveryslot,
                                        style: AppFonts.title4(
                                            color: AppColors.primary50),
                                      ),
                                      const Spacer(),
                                      Text(
                                        neworder.deliverydate,
                                        style: AppFonts.headline4(
                                            color: AppColors.grayscale90),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              const Icon(
                                                size: 20,
                                                Icons.person,
                                                color: AppColors.grayscale70,
                                              ),
                                              const SizedBox(width: 5),
                                              Text(
                                                neworder.customername,
                                                style: AppFonts.headline4(
                                                    color:
                                                        AppColors.grayscale70),
                                              ),
                                              const SizedBox(width: 3),
                                            ],
                                          ),
                                          const Spacer(),
                                          DriverOrderStatusChip(
                                            status: neworder.status,
                                          )
                                        ],
                                      ),
                                      const SizedBox(height: 5),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          const Icon(
                                            size: 20,
                                            Icons.location_on_outlined,
                                            color: AppColors.grayscale60,
                                          ),
                                          const SizedBox(width: 5),
                                          Text(
                                            neworder.customeraddress,
                                            style: AppFonts.headline4(
                                                color: AppColors.grayscale60),
                                          ),
                                          const SizedBox(width: 3),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 3),
                                  const Spacer(),
                                  Row(
                                    children: [
                                      Text(
                                        neworder.shopname,
                                        style: AppFonts.headline3(
                                            color: AppColors.grayscale90),
                                      ),
                                      const Spacer(),
                                      Text(
                                        neworder.ordernumber,
                                        style: AppFonts.body1(
                                            color: AppColors.grayscale90),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 3),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void _checkForOrdersWithSameAddress() {
    if (!_isDialogShown) {
      // Check if the dialog has not been shown yet
      Set<String> uniqueAddresses = {};
      Set<String> duplicateAddresses = {};

      for (var order in driverNewOrderList) {
        if (!uniqueAddresses.add(order.customeraddress)) {
          duplicateAddresses.add(order.customeraddress);
        }
      }

      if (duplicateAddresses.isNotEmpty) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              backgroundColor: AppColors.grayscale0,
              title: Text(
                'Same Location!!',
                style: AppFonts.title3(color: AppColors.primary50),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Hurray!, You have the following orders in the same area',
                    style: AppFonts.headline3(color: AppColors.grayscale90),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: driverNewOrderList
                        .where((order) =>
                            duplicateAddresses.contains(order.customeraddress))
                        .map((order) => Text(
                              'Order: ${order.ordernumber}',
                              style:
                                  AppFonts.title5(color: AppColors.primary30),
                            ))
                        .toList(),
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Got It',
                    style: AppFonts.body1(color: AppColors.primary30),
                  ),
                ),
              ],
            );
          },
        );
        _isDialogShown = true; // Set the flag to true after showing the dialog
      }
    }
  }
}

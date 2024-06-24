// ignore_for_file: use_super_parameters, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:slide_action/slide_action.dart';

import '../../data/colors.dart';
import '../data/fonts.dart';

class OrderDeliveredSwiper extends StatefulWidget {
  const OrderDeliveredSwiper({
    Key? key,
  }) : super(key: key);

  @override
  _OrderDeliveredSwiperState createState() => _OrderDeliveredSwiperState();
}

class _OrderDeliveredSwiperState extends State<OrderDeliveredSwiper> {
  bool _swipeCompleted = false;
  bool _cashReceived = false;
  bool _packageIntact = false;

  void _showConfirmationDialog() {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        bool tempCashReceived = _cashReceived;
        bool tempPackageIntact = _packageIntact;

        return AlertDialog(
          backgroundColor: AppColors.grayscale0,
          title: Text(
            'Confirm Delivery',
            style: AppFonts.title4(color: AppColors.grayscale90),
          ),
          content: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        tempCashReceived = !tempCashReceived;
                      });
                    },
                    child: Row(
                      children: [
                        Text(
                          'Cash Received',
                          style:
                              AppFonts.headline4(color: AppColors.grayscale90),
                        ),
                        const Spacer(),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.064,
                          height: MediaQuery.of(context).size.width * 0.064,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: tempCashReceived
                                  ? AppColors.primary20
                                  : AppColors.grayscale30,
                              width: tempCashReceived ? 6.0 : 1.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        tempPackageIntact = !tempPackageIntact;
                      });
                    },
                    child: Row(
                      children: [
                        Text(
                          'Package Intact',
                          style:
                              AppFonts.headline4(color: AppColors.grayscale90),
                        ),
                        const Spacer(),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.064,
                          height: MediaQuery.of(context).size.width * 0.064,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: tempPackageIntact
                                  ? AppColors.primary20
                                  : AppColors.grayscale30,
                              width: tempPackageIntact ? 6.0 : 1.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
          actions: <Widget>[
            TextButton(
              child: Text(
                'Cancel',
                style: AppFonts.headline4(color: AppColors.error100),
              ),
              onPressed: () {
                setState(() {
                  _swipeCompleted = false;
                });
                Navigator.of(context).pop();
              },
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
              child: Text(
                'Confirm',
                style: AppFonts.body1(color: AppColors.grayscale00),
              ),
              onPressed: () {
                setState(() {
                  _cashReceived = tempCashReceived;
                  _packageIntact = tempPackageIntact;
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return _swipeCompleted
        ? Expanded(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: AppColors.grayscale20,
                padding:
                    const EdgeInsets.symmetric(vertical: 9, horizontal: 24),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: Text(
                'Order Delivered',
                style: AppFonts.body1(color: AppColors.grayscale90),
              ),
            ),
          )
        : SlideAction(
            thumbHitTestBehavior: HitTestBehavior.translucent,
            trackHeight: 55,
            trackBuilder: (context, state) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: AppColors.primary30,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    'Order Delivered',
                    style: AppFonts.body1(color: AppColors.grayscale0),
                  ),
                ),
              );
            },
            thumbBuilder: (context, state) {
              return Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: AppColors.grayscale0,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Center(
                  child: Icon(
                    Icons.delivery_dining,
                    color: Colors.black,
                  ),
                ),
              );
            },
            action: () {
              setState(() {
                _swipeCompleted = true;
              });
              _showConfirmationDialog();
            },
          );
  }
}

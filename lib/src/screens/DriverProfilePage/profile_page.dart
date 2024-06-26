import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sulala_driver_app/src/data/colors.dart';
import 'package:sulala_driver_app/src/screens/ShimmerWidgets/profile_page_shimmer.dart';

import '../data/fonts.dart';
import 'DriverProfileWidgets/driver_availability_modal.dart';
import 'DriverProfileWidgets/driver_language_modal.dart';
import 'DriverProfileWidgets/driver_license_details_modal.dart';
import 'DriverProfileWidgets/driver_notification_modal.dart';
import 'DriverProfileWidgets/driver_vehicle_info_modal.dart';
import 'DriverProfileWidgets/edit_email_modal.dart';
import 'DriverProfileWidgets/edit_name_modal.dart';
import 'DriverProfileWidgets/edit_phone_number_modal.dart';
import 'DriverProfileWidgets/edit_profile_picture_modal.dart';

class DriverProfilePage extends StatefulWidget {
  const DriverProfilePage({super.key});

  @override
  State<DriverProfilePage> createState() => _DriverProfilePageState();
}

class _DriverProfilePageState extends State<DriverProfilePage> {
  String _licenseNumber = '123456789';
  String _expirationDate = '12/2024';
  String _selectedVehicle = 'Toyota Prius 2020';
  String _registrationNumber = 'ABC1234';
  String _currentStatus = 'Online';
  String _selectedTimeSlot = '7am - 3pm';
  bool _newOrders = true;
  bool _sameLocationOrders = true;
  bool _reviewReceived = true;
  bool _muteAll = false;
  String _name = 'John Doe';

  String _phoneNumber = '+123456';

  String _email = 'john.doe@example.com';
  File? _profileImage;
  final List<String> _vehicles = [
    'Toyota Prius 2020',
    'Honda Accord 2021',
    'Ford Focus 2019'
  ];
  final List<String> _timeSlots = ['7am - 3pm', '3pm - 11pm', '11pm - 7am'];
  String _selectedLanguage = 'English';
  final List<String> _languages = ['English', 'Arabic'];
  bool _isLoading = true;
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grayscale00,
      appBar: AppBar(
        title: Text(
          'Driver Profile',
          style: AppFonts.headline3(
            color: AppColors.grayscale90,
          ),
        ),
        elevation: 0,
        leading: IconButton(
          icon: Container(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.016),
            decoration: BoxDecoration(
              color: AppColors.grayscale10,
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        surfaceTintColor: AppColors.grayscale00,
        backgroundColor: AppColors.grayscale00,
      ),
      body: _isLoading
          ? const ShimmerEffectWidget()
          : SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Profile Picture and Personal Information
                  Center(
                    child: Column(
                      children: [
                        EditProfilePictureWidget(
                          profileImage: _profileImage,
                          onImageSelected: (newImage) {
                            setState(() {
                              _profileImage = newImage;
                            });
                          },
                        ),
                        const SizedBox(height: 10),
                        EditNameWidget(
                          name: _name,
                          onSave: (newName) {
                            setState(() {
                              _name = newName;
                            });
                          },
                        ),
                        EditEmailWidget(
                          email: _email,
                          onSave: (newEmail) {
                            setState(() {
                              _email = newEmail;
                            });
                          },
                        ),
                        EditPhoneNumberWidget(
                          phoneNumber: _phoneNumber,
                          onSave: (newPhoneNumber) {
                            setState(() {
                              _phoneNumber = newPhoneNumber;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  Container(
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF9F5EC),
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: AppColors.grayscale10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '4.5',
                                    style: AppFonts.body1(
                                        color: AppColors.grayscale90),
                                  ),
                                  const Icon(
                                    Icons.star,
                                    size: 15,
                                    color: AppColors.primary30,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Ratings',
                                style: AppFonts.body2(
                                    color: AppColors.grayscale90),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 1,
                          color: AppColors.grayscale30,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '98%',
                              style:
                                  AppFonts.body1(color: AppColors.grayscale90),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Success Rate',
                              style:
                                  AppFonts.body2(color: AppColors.grayscale90),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(color: AppColors.grayscale20),
                      color: AppColors.grayscale0,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Availability',
                            style:
                                AppFonts.title5(color: AppColors.grayscale90),
                          ),
                          const SizedBox(height: 5),
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: const Icon(
                              Icons.work_history_outlined,
                              size: 25,
                              color: AppColors.primary30,
                            ),
                            title: Row(
                              children: [
                                Text(
                                  'Current Status ',
                                  style: AppFonts.body1(
                                      color: AppColors.grayscale90),
                                ),
                                const Spacer(),
                                Text(
                                  _currentStatus,
                                  style: AppFonts.body2(
                                      color: AppColors.grayscale90),
                                ),
                                const SizedBox(width: 5),
                                _statusIndicator(_currentStatus),
                              ],
                            ),
                            trailing: const Icon(
                              Icons.chevron_right,
                              size: 25,
                              color: AppColors.primary30,
                            ),
                            onTap: () {
                              AvailabilityModal.show(
                                context,
                                _selectedTimeSlot,
                                _timeSlots,
                                (newTimeSlot, currentStatus) {
                                  setState(() {
                                    _selectedTimeSlot = newTimeSlot;
                                    _currentStatus = currentStatus;
                                  });
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(color: AppColors.grayscale20),
                      color: AppColors.grayscale0,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Driver Information',
                            style:
                                AppFonts.title5(color: AppColors.grayscale90),
                          ),
                          const SizedBox(height: 10),
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: const Icon(
                              Icons.card_membership,
                              size: 25,
                              color: AppColors.primary30,
                            ),
                            title: Row(
                              children: [
                                Text(
                                  'License Number',
                                  style: AppFonts.body1(
                                      color: AppColors.grayscale90),
                                ),
                                const Spacer(),
                                Text(
                                  ' $_licenseNumber',
                                  style: AppFonts.body2(
                                      color: AppColors.grayscale90),
                                ),
                              ],
                            ),
                            trailing: const Icon(
                              Icons.chevron_right,
                              size: 25,
                              color: AppColors.primary30,
                            ),
                            subtitle: Row(
                              children: [
                                Text(
                                  'Expiration Date ',
                                  style: AppFonts.body1(
                                      color: AppColors.grayscale90),
                                ),
                                const Spacer(),
                                Text(
                                  _expirationDate,
                                  style: AppFonts.body2(
                                      color: AppColors.grayscale90),
                                ),
                              ],
                            ),
                            onTap: () {
                              DriverInfoModal.show(
                                context,
                                _licenseNumber,
                                _expirationDate,
                                (newLicenseNumber, newExpirationDate) {
                                  setState(() {
                                    _licenseNumber = newLicenseNumber;
                                    _expirationDate = newExpirationDate;
                                  });
                                },
                              );
                            },
                          ),
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: const Icon(
                              Icons.directions_car,
                              size: 25,
                              color: AppColors.primary30,
                            ),
                            title: Row(
                              children: [
                                Text(
                                  'Vehicle ',
                                  style: AppFonts.body1(
                                      color: AppColors.grayscale90),
                                ),
                                const Spacer(),
                                Text(
                                  _selectedVehicle,
                                  style: AppFonts.body2(
                                      color: AppColors.grayscale90),
                                ),
                              ],
                            ),
                            trailing: const Icon(
                              Icons.chevron_right,
                              size: 25,
                              color: AppColors.primary30,
                            ),
                            subtitle: Row(
                              children: [
                                Text(
                                  'Registration ',
                                  style: AppFonts.body1(
                                      color: AppColors.grayscale90),
                                ),
                                const Spacer(),
                                Text(
                                  _registrationNumber,
                                  style: AppFonts.body2(
                                      color: AppColors.grayscale90),
                                ),
                              ],
                            ),
                            onTap: () {
                              VehicleInfoModal.show(
                                context,
                                _selectedVehicle,
                                _registrationNumber,
                                _vehicles,
                                (newVehicle, newRegistration) {
                                  setState(() {
                                    _selectedVehicle = newVehicle;
                                    _registrationNumber = newRegistration;
                                  });
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(color: AppColors.grayscale20),
                      color: AppColors.grayscale0,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Settings',
                            style:
                                AppFonts.title5(color: AppColors.grayscale90),
                          ),
                          const SizedBox(height: 10),
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: const Icon(
                              Icons.notifications_active_outlined,
                              size: 25,
                              color: AppColors.primary30,
                            ),
                            title: Text(
                              'Notification Preferences',
                              style:
                                  AppFonts.body1(color: AppColors.grayscale90),
                            ),
                            trailing: const Icon(
                              Icons.chevron_right,
                              size: 25,
                              color: AppColors.primary30,
                            ),
                            onTap: () {
                              NotificationPreferencesModal.show(
                                context,
                                _newOrders,
                                _sameLocationOrders,
                                _reviewReceived,
                                _muteAll,
                                (newOrders, sameLocationOrders, reviewReceived,
                                    muteAll) {
                                  setState(() {
                                    _newOrders = newOrders;
                                    _sameLocationOrders = sameLocationOrders;
                                    _reviewReceived = reviewReceived;
                                    _muteAll = muteAll;
                                  });
                                },
                              );
                            },
                          ),
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: const Icon(
                              Icons.language,
                              size: 25,
                              color: AppColors.primary30,
                            ),
                            title: Row(
                              children: [
                                Text(
                                  'Language and Region ',
                                  style: AppFonts.body1(
                                      color: AppColors.grayscale90),
                                ),
                                const Spacer(),
                                Text(
                                  _selectedLanguage,
                                  style: AppFonts.body2(
                                      color: AppColors.grayscale90),
                                ),
                              ],
                            ),
                            trailing: const Icon(
                              Icons.chevron_right,
                              size: 25,
                              color: AppColors.primary30,
                            ),
                            onTap: () {
                              LanguageAndRegionModal.show(
                                context,
                                _selectedLanguage,
                                _languages,
                                (newLanguage) {
                                  setState(() {
                                    _selectedLanguage = newLanguage;
                                  });
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Support and Help
                ],
              ),
            ),
    );
  }

  // void _showHelpCenterModal(BuildContext context) {
  //   showModalBottomSheet(
  //     context: context,
  //     builder: (context) {
  //       return _buildModalContent('Help Center', [
  //         const ListTile(
  //           title: Text('Access help resources here.'),
  //         ),
  //       ]);
  //     },
  //   );
  // }

  // void _showSubmitFeedbackModal(BuildContext context) {
  //   showModalBottomSheet(
  //     context: context,
  //     builder: (context) {
  //       return _buildModalContent('Submit Feedback', [
  //         const ListTile(
  //           title: Text('Submit your feedback here.'),
  //         ),
  //       ]);
  //     },
  //   );
  // }
}

Widget _statusIndicator(String status) {
  return Container(
    width: 10,
    height: 10,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: status == 'Online' ? Colors.green : Colors.grey,
    ),
  );
}

  // Payment and Earnings
            // Text('Payment and Earnings',
            //     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            // SizedBox(height: 10),
            // ListTile(
            //   leading: Icon(Icons.attach_money),
            //   title: Text('Total Earnings: \$5000'),
            //   onTap: () {},
            // ),
            // ListTile(
            //   leading: Icon(Icons.history),
            //   title: Text('Recent Transactions'),
            //   subtitle: Text('Last payment: \$200 on 01/15/2024'),
            //   onTap: () {},
            // ),
            // Divider(height: 40),

            // Schedule and Availability


              // void _showEarningsModal(BuildContext context) {
  //   showModalBottomSheet(
  //     context: context,
  //     builder: (context) {
  //       return _buildModalContent('Earnings', [
  //         ListTile(
  //           title: Text('Total Earnings: \$5000'),
  //         ),
  //       ]);
  //     },
  //   );
  // }

  // void _showRecentTransactionsModal(BuildContext context) {
  //   showModalBottomSheet(
  //     context: context,
  //     builder: (context) {
  //       return _buildModalContent('Recent Transactions', [
  //         ListTile(
  //           title: Text('Last payment: \$200 on 01/15/2024'),
  //         ),
  //       ]);
  //     },
  //   );
  // }
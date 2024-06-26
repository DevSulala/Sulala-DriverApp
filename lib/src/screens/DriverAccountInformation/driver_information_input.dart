import 'package:flutter/material.dart';
import 'package:sulala_driver_app/src/screens/driver_bottom_navigation.dart';
import 'dart:io';

import '../../data/colors.dart';
import '../DriverProfilePage/DriverProfileWidgets/edit_profile_picture_modal.dart';
import '../ShimmerWidgets/profile_page_shimmer.dart';
import '../data/fonts.dart';
import 'upload_documents_widget.dart';

class DriverInfoInput extends StatefulWidget {
  const DriverInfoInput({super.key});

  @override
  State<DriverInfoInput> createState() => _DriverInfoInputState();
}

class _DriverInfoInputState extends State<DriverInfoInput> {
  File? _profileImage;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    // Simulate a network request or data loading
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
          'Add Details',
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
                  Center(
                    child: Stack(
                      children: [
                        EditProfilePictureWidget(
                          profileImage: _profileImage,
                          onImageSelected: (newImage) {
                            setState(() {
                              _profileImage = newImage;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  Text(
                    'Enter Name*',
                    style: AppFonts.body1(color: AppColors.grayscale90),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      border: Border.all(color: AppColors.grayscale30),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: TextField(
                        style: AppFonts.caption2(color: AppColors.grayscale90),
                        decoration: InputDecoration(
                          hintStyle:
                              AppFonts.body1(color: AppColors.grayscale50),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'Enter License Number*',
                    style: AppFonts.body1(color: AppColors.grayscale90),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      border: Border.all(color: AppColors.grayscale30),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        style: AppFonts.caption2(color: AppColors.grayscale90),
                        decoration: InputDecoration(
                          hintStyle:
                              AppFonts.body1(color: AppColors.grayscale50),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'Upload Driver License*',
                    style: AppFonts.body1(color: AppColors.grayscale90),
                  ),
                  const SizedBox(height: 5),
                  UploadDocumentWidget(
                    title: 'Driver License',
                    onImageSelected: (frontImage, backImage) {
                      // Handle driver license images here
                    },
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'Upload Civil ID*',
                    style: AppFonts.body1(color: AppColors.grayscale90),
                  ),
                  const SizedBox(height: 5),
                  UploadDocumentWidget(
                    title: 'Civil ID',
                    onImageSelected: (frontImage, backImage) {
                      // Handle Civil ID images here
                    },
                  ),
                ],
              ),
            ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MainPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary50,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
                child: Text(
                  'Save',
                  style: AppFonts.body1(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

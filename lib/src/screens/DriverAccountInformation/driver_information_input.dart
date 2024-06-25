import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sulala_driver_app/src/screens/driver_bottom_navigation.dart';
import 'dart:io';

import '../../data/colors.dart';
import '../data/fonts.dart';
import 'upload_documents_widget.dart';

class DriverInfoInput extends StatefulWidget {
  const DriverInfoInput({super.key});

  @override
  State<DriverInfoInput> createState() => _DriverInfoInputState();
}

class _DriverInfoInputState extends State<DriverInfoInput> {
  File? _profileImage;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage(ImageSource source, {bool isProfile = false}) async {
    final pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        if (isProfile) {
          _profileImage = File(pickedFile.path);
        }
      });
    }
  }

  void _showImageSourceActionSheet(BuildContext context,
      {bool isProfile = false}) {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.grayscale00,
      showDragHandle: true,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return SafeArea(
          child: Wrap(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Upload Profile Image',
                      style: AppFonts.title4(
                        color: AppColors.grayscale90,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: const Icon(
                        Icons.photo_library,
                        color: AppColors.primary30,
                      ),
                      trailing: const Icon(
                        Icons.chevron_right,
                        color: AppColors.primary30,
                      ),
                      title: Text(
                        'Gallery',
                        style: AppFonts.headline4(
                          color: AppColors.grayscale90,
                        ),
                      ),
                      onTap: () {
                        _pickImage(ImageSource.gallery, isProfile: isProfile);
                        Navigator.of(context).pop();
                      },
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: const Icon(
                        Icons.photo_camera,
                        color: AppColors.primary30,
                      ),
                      trailing: const Icon(
                        Icons.chevron_right,
                        color: AppColors.primary30,
                      ),
                      title: Text(
                        'Camera',
                        style: AppFonts.headline4(
                          color: AppColors.grayscale90,
                        ),
                      ),
                      onTap: () {
                        _pickImage(ImageSource.camera, isProfile: isProfile);
                        Navigator.of(context).pop();
                      },
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 90,
                    backgroundImage: _profileImage != null
                        ? FileImage(_profileImage!)
                        : const AssetImage(
                                'assets/Marketplace/sulala_logo_fill.png')
                            as ImageProvider,
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: InkWell(
                      onTap: () {
                        _showImageSourceActionSheet(context, isProfile: true);
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                          color: AppColors.secondary10,
                          shape: BoxShape.circle,
                        ),
                        padding: const EdgeInsets.all(8),
                        child: const Icon(
                          Icons.camera_alt,
                          color: AppColors.primary50,
                        ),
                      ),
                    ),
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
                borderRadius:
                    BorderRadius.circular(50.0), // Adjust border radius here
                border:
                    Border.all(color: AppColors.grayscale30), // Outline color
                color: Colors.white, // Background color
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: TextField(
                  style: AppFonts.caption2(color: AppColors.grayscale90),
                  decoration: InputDecoration(
                    hintStyle: AppFonts.body1(color: AppColors.grayscale50),
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
                borderRadius:
                    BorderRadius.circular(50.0), // Adjust border radius here
                border:
                    Border.all(color: AppColors.grayscale30), // Outline color
                color: Colors.white, // Background color
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  style: AppFonts.caption2(color: AppColors.grayscale90),
                  decoration: InputDecoration(
                    hintStyle: AppFonts.body1(color: AppColors.grayscale50),
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
                  backgroundColor: AppColors.primary50, // Button color
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

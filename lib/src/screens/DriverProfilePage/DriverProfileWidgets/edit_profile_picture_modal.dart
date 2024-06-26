// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:sulala_driver_app/src/data/colors.dart';

import '../../data/fonts.dart';

class EditProfilePictureWidget extends StatefulWidget {
  final File? profileImage;
  final Function(File?) onImageSelected;

  const EditProfilePictureWidget(
      {super.key, required this.profileImage, required this.onImageSelected});

  @override
  _EditProfilePictureWidgetState createState() =>
      _EditProfilePictureWidgetState();
}

class _EditProfilePictureWidgetState extends State<EditProfilePictureWidget> {
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        widget.onImageSelected(File(pickedFile.path));
      });
    }
  }

  void _showImageSourceActionSheet(BuildContext context) {
    showModalBottomSheet(
      showDragHandle: true,
      backgroundColor: AppColors.grayscale00,
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: SafeArea(
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
                          _pickImage(ImageSource.gallery);
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
                          _pickImage(ImageSource.camera);
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
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 90,
          backgroundImage: widget.profileImage != null
              ? FileImage(widget.profileImage!)
              : const AssetImage('assets/Marketplace/sulala_logo_fill.png')
                  as ImageProvider,
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: InkWell(
            onTap: () {
              _showImageSourceActionSheet(context);
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
    );
  }
}

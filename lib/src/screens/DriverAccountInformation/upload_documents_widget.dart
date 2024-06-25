import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import '../../data/colors.dart';
import '../data/fonts.dart';

class UploadDocumentWidget extends StatefulWidget {
  final String title;
  final Function(File?, File?) onImageSelected;

  const UploadDocumentWidget({
    super.key,
    required this.title,
    required this.onImageSelected,
  });

  @override
  // ignore: library_private_types_in_public_api
  _UploadDocumentWidgetState createState() => _UploadDocumentWidgetState();
}

class _UploadDocumentWidgetState extends State<UploadDocumentWidget> {
  File? _frontImage;
  File? _backImage;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage(ImageSource source, bool isFront) async {
    final pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        if (isFront) {
          _frontImage = File(pickedFile.path);
        } else {
          _backImage = File(pickedFile.path);
        }
        widget.onImageSelected(_frontImage, _backImage);
      });
    }
  }

  void _showImageSourceActionSheet(BuildContext context, bool isFront) {
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
                      'Upload Image',
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
                        _pickImage(ImageSource.camera, isFront);
                        Navigator.of(context).pop();
                      },
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
                        _pickImage(ImageSource.gallery, isFront);
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
          onTap: () {
            _showImageSourceActionSheet(context, true);
          },
          child: Container(
            height: 150,
            width: 180,
            decoration: BoxDecoration(
              borderRadius:
                  _frontImage == null ? BorderRadius.circular(30) : null,
              border: _frontImage == null
                  ? Border.all(color: AppColors.grayscale30)
                  : null,
              color: _frontImage == null
                  ? AppColors.grayscale10
                  : Colors.transparent,
            ),
            child: _frontImage == null
                ? Center(
                    child: Text(
                      'Upload Front Image',
                      style: AppFonts.body1(
                        color: AppColors.primary20,
                      ),
                    ),
                  )
                : ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.file(
                      _frontImage!,
                      fit: BoxFit.fill,
                    ),
                  ),
          ),
        ),
        InkWell(
          onTap: () {
            _showImageSourceActionSheet(context, false);
          },
          child: Container(
            height: 150,
            width: 180,
            decoration: BoxDecoration(
              borderRadius:
                  _backImage == null ? BorderRadius.circular(30) : null,
              border: _backImage == null
                  ? Border.all(color: AppColors.grayscale30)
                  : null,
              color: _backImage == null
                  ? AppColors.grayscale10
                  : Colors.transparent,
            ),
            child: _backImage == null
                ? Center(
                    child: Text(
                      'Upload Back Image',
                      style: AppFonts.body1(
                        color: AppColors.primary20,
                      ),
                    ),
                  )
                : ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.file(
                      _backImage!,
                      fit: BoxFit.fill,
                    ),
                  ),
          ),
        ),
      ],
    );
  }
}

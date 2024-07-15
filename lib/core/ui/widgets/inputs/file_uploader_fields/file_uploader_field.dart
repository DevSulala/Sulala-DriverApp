import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:dotted_border/dotted_border.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sulala_driver_app/core/providers/riverpod_globals.dart';
import 'package:sulala_driver_app/src/data/colors.dart';
import 'package:sulala_driver_app/src/screens/data/fonts.dart';

// Create a Riverpod provider to hold the list of uploaded files

class FileUploaderField extends ConsumerStatefulWidget {
  const FileUploaderField(
      {Key? key,
      this.onFileUploaded = _defaultFunction,
      this.uploadedFiles,
      this.onAsyncDelete,
      this.onDelete})
      : super(key: key);
  final void Function(File) onFileUploaded;
  final List<Uri>? uploadedFiles;
  final Future<void> Function(String)? onAsyncDelete;
  final Function(String)? onDelete;

  static void _defaultFunction(file) {
    // This is the default empty function.
    // It does nothing.
  }

  @override
  ConsumerState<FileUploaderField> createState() => _FileUploaderFieldState();
}

class _FileUploaderFieldState extends ConsumerState<FileUploaderField> {
  final bool _loading = false;
  double _uploadProgress = 0.0;

  late final List<Uri> uploadedFiles;

  Future<void> _chooseFile(BuildContext context) async {
    try {
      FilePickerResult? result =
          await FilePicker.platform.pickFiles(allowMultiple: true);

      if (result != null && result.files.isNotEmpty) {
        // Start uploading the file
        for (var file in result.files) {
          await _saveFile(file.path!);
        }
      }
    } catch (e) {
      // Handle any potential errors when picking the file
    }
  }

  Future<void> _saveFile(String filePath) async {
    try {
      // Get the directory where we can store app-specific files
      final directory = await getApplicationDocumentsDirectory();

      // Create a File instance for the selected file
      final selectedFile = File(filePath);

      // Create a new file path in the app's data directory
      final String newFilePath =
          '${directory.path}/${selectedFile.uri.pathSegments.last}';

      // Copy the file to the new location
      final newFile = await selectedFile.copy(newFilePath);
      widget.onFileUploaded(newFile);

      // Update the state to reflect the file has been saved
      if (mounted) {
        setState(() {
          ref.read(uploadedFilesProvider).add(Uri.file(newFilePath));
          uploadedFiles.add(Uri.file(newFilePath));
          _uploadProgress =
              1; // Assuming the file is saved, set progress to 100%
          // You may also want to update other states or notify the user
        });
      }
    } catch (e) {
      // Handle errors (e.g., file not found, no permission, etc.)
      if (kDebugMode) {
        print("Error saving file: $e");
      }
    }
  }

  Future<void> _deleteFile(BuildContext context, Uri file) async {
    // Remove the file from the provider

    if (widget.onAsyncDelete != null) {
      await widget.onAsyncDelete!(file.path);
    }
    ref.read(uploadedFilesProvider).remove(file);
    setState(() {
      uploadedFiles.remove(file);
    });

    if (widget.onAsyncDelete == null && widget.onDelete != null) {
      widget.onDelete!(file.path);
    }
  }

  @override
  void initState() {
    super.initState();
    ref.read(uploadedFilesProvider).clear();
    if (widget.uploadedFiles != null) {
      ref.read(uploadedFilesProvider).addAll(widget.uploadedFiles!);
    }

    uploadedFiles = widget.uploadedFiles ?? [];
  }

  @override
  Widget build(BuildContext context) {
    final borderColor =
        uploadedFiles.isNotEmpty ? AppColors.primary20 : AppColors.grayscale20;

    final fileWidgets = uploadedFiles.map((file) {
      return GestureDetector(
        onTap: () => _showFile(file),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            children: [
              const Icon(
                Icons.file_copy_outlined,
                color: AppColors.primary30,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  file.pathSegments.last,
                  style: AppFonts.body1(color: AppColors.grayscale90),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(width: 8),
              if (_loading)
                Expanded(
                  child: LinearProgressIndicator(
                    value: _uploadProgress,
                    valueColor: const AlwaysStoppedAnimation<Color>(
                      AppColors.primary30,
                    ),
                    backgroundColor: AppColors.grayscale10,
                  ),
                ),
              IconButton(
                onPressed: () => _deleteFile(context, file),
                icon: const Icon(
                  Icons.delete_outline,
                  color: AppColors.error100,
                ),
              ),
            ],
          ),
        ),
      );
    }).toList();

    final uploadButton = ElevatedButton(
      onPressed: _loading ? null : () => _chooseFile(context),
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.grayscale0,
        elevation: 0,
        padding: const EdgeInsets.all(0),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return DottedBorder(
            borderType: BorderType.RRect,
            radius: const Radius.circular(16),
            color: borderColor,
            strokeWidth: 1,
            dashPattern: const [12, 12],
            child: SizedBox(
              width: constraints.maxWidth,
              height: 150,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: uploadedFiles.isNotEmpty
                    ? Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.file_copy_outlined,
                            color: AppColors.primary20,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            "Upload File. PDF, Jpeg, PNG",
                            style: AppFonts.body1(color: AppColors.primary20),
                          ),
                        ],
                      )
                    : Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.file_copy_outlined,
                            color: AppColors.grayscale50,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            "Upload File. PDF, Jpeg, PNG",
                            style: AppFonts.body1(color: AppColors.grayscale50),
                          ),
                        ],
                      ),
              ),
            ),
          );
        },
      ),
    );

    return Column(
      children: [
        uploadButton,
        const SizedBox(
          height: 16,
        ),
        Column(children: fileWidgets)
      ],
    );
  }

  void _showFile(Uri uri) {
    final index = uploadedFiles.indexOf(uri);
    // Navigator.push(
    //     context,
    //     MaterialPageRoute(
    //         builder: (context) => FileViewPage(
    //               files: uploadedFiles,
    //               index: index,
    //             )));
  }
}

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class UploadButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.amber,
      child: Icon(Icons.upload),
      onPressed: () async {
        // Open file picker
        FilePickerResult? result = await FilePicker.platform.pickFiles();

        if (result != null) {
          // Get the file
          PlatformFile file = result.files.first;

          // Do something with the file, like upload it
          print('File path: ${file.path}');
          print('File name: ${file.name}');
          print('File bytes: ${file.bytes}');
          print('File size: ${file.size}');
        } else {
          // User canceled the picker
          print('User canceled the picker');
        }
      },
    );
  }
}

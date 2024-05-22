import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class DCore {
  static Future<File?> pickImages(ImageSource source, BuildContext context) async {
    XFile? image = await ImagePicker().pickImage(source: source);
    if (image == null) {
      return null;
    } else {
      return File(image.path);
    }
  }
}

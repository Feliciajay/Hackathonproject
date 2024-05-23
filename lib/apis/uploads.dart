import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class FileUpload {
  static var firebaseFireStore = FirebaseStorage.instance;

  static Future<String?> UploadFile(
      File image, String uid, BuildContext context) async {
    try {
      var uploadTask =
          await firebaseFireStore.ref("profilePic").child(uid).putFile(image);

      TaskSnapshot downloadURL = (await uploadTask);
      String url = await downloadURL.ref.getDownloadURL();
      return url;
    } on FirebaseException catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('${e.message}')));
    }
  }
}

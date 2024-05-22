import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hackathon/apis/uploads.dart';

class AuthService {
  static var firebaseauth = FirebaseAuth.instance;
  static var firebaseFireStore = FirebaseFirestore.instance;
  static Future<User?> createUser({
    required String email,
    required String password,
    required bool isSeller,
    String? storeName,
    required String firstName,
    required String lastName,
    String? accountNumber,
    String? bankName,
    File? image,
    required BuildContext context,
  }) async {
    try {
      var data;
      var cre = await firebaseauth.createUserWithEmailAndPassword(
          email: email, password: password);

      if (image != null) {
        String? profileUrl =
            await FileUpload.UploadFile(image!, cre.user!.uid, context);
        if (isSeller) {
          data = {
            "email": email,
            "firstName": firstName,
            "lastName": lastName,
            "storeName": storeName,
            "accountNumber": accountNumber,
            "bankName": bankName,
            "userType": "seller",
            "profileUrl": profileUrl,
          };
        } else {
          data = {
            "email": email,
            "username": firstName,
            "userType": "user",
            "profileUrl": profileUrl,
          };
        }

        if (data != null) {
          var user = await firebaseFireStore
              .collection("users")
              .doc(cre.user?.uid)
              .set(data);
        }
      }
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Registration Successful')));

      return cre.user;
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('${e.message}')));
    }
  }

  static Future<User?> loginUser(
      {required String email,
      required String password,
      required BuildContext context}) async {
    try {
      var cre = await firebaseauth.signInWithEmailAndPassword(
          email: email, password: password);
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('SignUp Successful'),
      ));
      return cre.user;
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('${e.message}')));
    }
  }

  Future logout() async {
    await firebaseauth.signOut();
  }

  // Future getUserDetails() async {
  //   firebaseFireStore.collection("users")
  // }
}

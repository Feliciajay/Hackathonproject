import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AuthService {
  static var firebaseauth = FirebaseAuth.instance;
  static var firebaseFireStore = FirebaseFirestore.instance;
  static Future createUser({
    required String email,
    required String password,
    required bool isSeller,
    String? storeName,
    required String firstName,
    required String lastName,
    String? accountNumber,
    String? state,
    String? bankName,
    required BuildContext context,
  }) async {
    try {
      var data;
      var cre = await firebaseauth.createUserWithEmailAndPassword(
          email: email, password: password);

      if (isSeller) {
        data = {
          "email": email,
          "firstName": firstName,
          "lastName": lastName,
          "storeName": storeName,
          "accountNumber": accountNumber,
          "bankName": bankName,
          "state": state,
          "userType": "seller"
        };
      } else {
        data = {
          "email": email,
          "firstName": firstName,
          "lastName": lastName,
          "userType": "user"
        };
      }

      if (data != null) {
        firebaseFireStore.collection("users").doc(cre.user?.uid).set(data);
      }

      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Registration Successful')));
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('${e.message}')));
    }
  }

  Future loginUser(
      {required String email,
      required String password,
      required BuildContext context}) async {
    try {
      firebaseauth.signInWithEmailAndPassword(email: email, password: password);
      await ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('SignUp Successful'),
      ));
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('${e.message}')));
    }
  }
}

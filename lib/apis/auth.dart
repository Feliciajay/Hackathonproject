import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AuthService {
  var firebaseauth = FirebaseAuth.instance;
  Future createUser({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      firebaseauth.createUserWithEmailAndPassword(
          email: email, password: password);
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

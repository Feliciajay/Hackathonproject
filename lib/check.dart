import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/apis/auth.dart';
import 'package:hackathon/constant/app_color.dart';
import 'package:hackathon/home/home_nav.dart';
import 'package:hackathon/onboarding/onboarding.dart';
import 'package:hackathon/signin/signin.dart';

class CheckScreen extends StatefulWidget {
  const CheckScreen({super.key});

  @override
  State<CheckScreen> createState() => _CheckScreenState();
}

class _CheckScreenState extends State<CheckScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<User?>(
      stream: AuthService.firebaseauth.userChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator(
            color: AppColor.pink,
          );
        } else if (snapshot.hasData) {
          return Home();
        } else {
          if (onboarded) {
            return SignInPage()
          }else {
            return Onboarding();
          }
        }
      },
    ));
  }
}

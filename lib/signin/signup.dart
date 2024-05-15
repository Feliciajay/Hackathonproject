import 'package:flutter/material.dart';
import 'package:hackathon/onboarding/get_started.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return const OnboardingScreen();
        }));
      },
      child: const Scaffold(),
    );
  }
}

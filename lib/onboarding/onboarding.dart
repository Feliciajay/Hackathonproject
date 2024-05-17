import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hackathon/constant/app_image.dart';
import 'package:hackathon/onboarding/provider/onboard_provider.dart';
import 'package:hackathon/onboarding/widget/onboarding_widget.dart';
import 'package:provider/provider.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  //late final AnimatedContainer container = AnimatedContainer(
  //  duration: const Duration(seconds: 5),
  // );

  @override
  Widget build(BuildContext context) {
    return Consumer<OnboardingProvider>(builder: (context, onboadProvider, _) {
      return PageView(
        controller: onboadProvider.controller,
        children: onboadProvider.onboardings
            .map((onboad) => Page1(
                currentPage: onboad.currentPage,
                title: onboad.title,
                subTitle: onboad.subTitle,
                imagePath: onboad.imagePath))
            .toList(),
      );
    });
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hackathon/onboarding/pageview/page1.dart';
import 'package:hackathon/onboarding/pageview/page2.dart';
import 'package:hackathon/onboarding/pageview/page3.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController controller = PageController(initialPage: 0);
  //late final AnimatedContainer container = AnimatedContainer(
  //  duration: const Duration(seconds: 5),
  // );

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      children: const <Widget>[
        Page1(),
        Page2(),
        Page3(),
      ],
    );
  }
}

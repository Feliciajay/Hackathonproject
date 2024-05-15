import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hackathon/constant/app_image.dart';
import 'package:hackathon/onboarding/widget/onboarding_widget.dart';

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
      children: <Widget>[
        Page1(
            imagePath: AppImages.productscreen1Image,
            title: 'Choose Products',
            pageController: controller,
            currentPage: 0,
            subTitle:
                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.'),

        Page1(
          imagePath: AppImages.pagetwoImage,
          title: 'Make Payment',
          pageController: controller,
          currentPage: 1,
          subTitle:
              'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
        ),
        Page1(
          currentPage: 2,
          imagePath: AppImages.pagethreeImage,
          pageController: controller,
          title: 'Get Your Order',
          subTitle:
              'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
        ),
        // Page2(),
        // Page3(),
      ],
    );
  }
}

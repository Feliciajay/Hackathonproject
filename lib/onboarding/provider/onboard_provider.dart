import 'package:flutter/material.dart';
import 'package:hackathon/constant/app_image.dart';
import 'package:hackathon/onboarding/model/onboarding_model.dart';

class OnboardingProvider extends ChangeNotifier {
  final PageController controller = PageController();
  List<OnBoardingModel> onboardings = [
    OnBoardingModel(
        imagePath: AppImages.productscreen1Image,
        title: 'Choose Products',
        currentPage: 0,
        subTitle:
            'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet s '),
    OnBoardingModel(
        imagePath: AppImages.productscreen1Image,
        title: 'Choose Products',
        currentPage: 1,
        subTitle:
            'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet s '),
    OnBoardingModel(
        imagePath: AppImages.productscreen1Image,
        title: 'Choose Products',
        currentPage: 2,
        subTitle:
            'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet s '),
  ];

  void nextOnPressed() {
    controller.nextPage(
        duration: Duration(milliseconds: 200), curve: Curves.linear);
    notifyListeners();
  }

  void prevOnPressed() {
    controller.previousPage(
        duration: Duration(milliseconds: 200), curve: Curves.linear);
    notifyListeners();
  }
}

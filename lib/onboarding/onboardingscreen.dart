import 'package:flutter/material.dart';
import 'package:hackathon/constant/app_image.dart';
import 'package:hackathon/onboarding/homepage.dart';
import 'package:hackathon/signin/widget/social_botton.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              const SocialBotton(imagePath: AppImages.screenImage),
              Padding(
                padding: const EdgeInsets.only(top: 352, left: 55),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'You Want\n Authentic,Here\n You Go!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 38,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffFFFFFF)),
                    ),
                    const Text(
                      'Find it here, buy it here!',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(
                          0XFFF2F2F2,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 44,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return const HomePage();
                        }));
                      },
                      child: Container(
                        height: 55,
                        width: 279,
                        decoration: BoxDecoration(
                          color: const Color(0XffF83758),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Center(
                          child: Text(
                            'Get Started',
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hackathon/constant/app_image.dart';
import 'package:hackathon/home/homepage.dart';
import 'package:hackathon/signin/signup.dart';
import 'package:hackathon/signin/widget/auth_text_field.dart';

import 'widget/social_botton.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 32, top: 61, right: 32),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                'Welcome\n Back!',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 36,
              ),
              AuthTextField(
                hintText: "Username Or Email",
                controller: emailEditingController,
              ),
              const SizedBox(
                height: 31,
              ),
              AuthTextField(
                  hintText: "Password", controller: passwordEditingController),
              const SizedBox(
                height: 76,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return HomeScreen();
                  }));
                },
                child: Container(
                  width: 317,
                  height: 55,
                  decoration: BoxDecoration(
                    color: const Color(0XFFF83758),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'LogIn',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 75,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 95),
                child: Text(
                  '- OR Continue with -',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(
                        0XFF575757,
                      )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialBotton(imagePath: AppImages.googleImage),
                    SocialBotton(imagePath: AppImages.appleImage),
                    SocialBotton(imagePath: AppImages.facebookImage),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 62),
                child: Row(
                  children: [
                    const Text(
                      'Create An Account',
                      style: TextStyle(
                          color: Color(0XFF575757),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) {
                            return const SignUp();
                          }),
                        );
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                            color: Color(0XFFF83758),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

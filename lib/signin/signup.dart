import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hackathon/apis/auth.dart';
import 'package:hackathon/constant/app_image.dart';
import 'package:hackathon/onboarding/get_started.dart';
import 'package:hackathon/signin/signin.dart';
import 'package:hackathon/signin/widget/auth_text_field.dart';

import 'widget/social_botton.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();
  TextEditingController storeEditingController = TextEditingController();
  TextEditingController firstNameEditingController = TextEditingController();
  TextEditingController lastNameEditingController = TextEditingController();
  TextEditingController accountNumberEditingController =
      TextEditingController();
  TextEditingController comfirmemailEditingController = TextEditingController();

  String userType = "user";
  bool isSeller = false;
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
                'Create an\n account!',
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
                height: 15,
              ),
              AuthTextField(
                  hintText: "Password", controller: passwordEditingController),
              const SizedBox(
                height: 15,
              ),
              AuthTextField(
                  hintText: "Password", controller: passwordEditingController),
              const SizedBox(
                height: 16,
              ),
              DropdownButtonFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                  ),
                  value: userType,
                  items: [
                    DropdownMenuItem(
                      child: Text("User"),
                      value: 'user',
                    ),
                    DropdownMenuItem(
                      child: Text("Seller"),
                      value: "seller",
                    )
                  ],
                  onChanged: (value) {
                    if (value == "seller") {
                      setState(() {
                        isSeller = true;
                      });
                    } else {
                      setState(() {
                        isSeller = false;
                      });
                    }
                  }),
              const SizedBox(
                height: 10,
              ),
              isSeller
                  ? Column(
                      children: [
                        AuthTextField(
                          hintText: "Store Name",
                          controller: storeEditingController,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        AuthTextField(
                            hintText: "First Name",
                            controller: firstNameEditingController),
                        const SizedBox(
                          height: 10,
                        ),
                        AuthTextField(
                            hintText: "Last Name",
                            controller: lastNameEditingController),
                        const SizedBox(
                          height: 10,
                        ),
                        AuthTextField(
                            hintText: "Account Number",
                            controller: accountNumberEditingController),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    )
                  : Container(),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  if (emailEditingController.text.isNotEmpty ) {

                  }
                 
                },
                child: Container(
                  width: double.infinity,
                  height: 55,
                  decoration: BoxDecoration(
                    color: const Color(0XFFF83758),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'Create Account',
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
                      'Already Have an Account?',
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
                            return const SignInPage();
                          }),
                        );
                      },
                      child: const Text(
                        'Login',
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

import 'dart:ffi';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hackathon/apis/auth.dart';
import 'package:hackathon/constant/app_color.dart';
import 'package:hackathon/constant/app_image.dart';
import 'package:hackathon/core/pick_image.dart';
import 'package:hackathon/onboarding/get_started.dart';
import 'package:hackathon/signin/signin.dart';
import 'package:hackathon/signin/widget/auth_text_field.dart';
import 'package:image_picker/image_picker.dart';

import '../home/home_nav.dart';
import 'widget/social_botton.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  File? userImage;
  TextEditingController emailEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();
  TextEditingController storeEditingController = TextEditingController();
  TextEditingController firstNameEditingController = TextEditingController();
  TextEditingController lastNameEditingController = TextEditingController();
  TextEditingController accountNumberEditingController =
      TextEditingController();
  TextEditingController comfirmPasswordEditingController =
      TextEditingController();
  TextEditingController bankEditingController = TextEditingController();

  String userType = "user";
  bool isSeller = false;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: isLoading
            ? const Center(
                child: CircularProgressIndicator(
                  color: AppColor.pink,
                ),
              )
            : Padding(
                padding: const EdgeInsets.only(left: 32, top: 61, right: 32),
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Create an\n account!',
                              style: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                            Stack(children: [
                              CircleAvatar(
                                radius: 70,
                                child: userImage == null
                                    ? const Icon(
                                        Icons.android,
                                        size: 70,
                                      )
                                    : Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                                image: FileImage(
                                                  userImage!,
                                                ),
                                                fit: BoxFit.fill)),
                                      ),
                              ),
                              Positioned(
                                bottom: 7,
                                right: 15,
                                child: GestureDetector(
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                              title: const Text(
                                                "Pick Your Desire",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              actions: [
                                                SizedBox(
                                                  width: double.infinity,
                                                  child: ElevatedButton(
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                              backgroundColor:
                                                                  AppColor
                                                                      .pink),
                                                      onPressed: () async {
                                                        File? file = await DCore
                                                            .pickImages(
                                                                ImageSource
                                                                    .camera,
                                                                context);
                                                        Navigator.pop(context);
                                                        setState(() {
                                                          userImage = file;
                                                        });
                                                      },
                                                      child: const Text(
                                                        "Camera",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      )),
                                                ),
                                                SizedBox(
                                                  width: double.infinity,
                                                  child: ElevatedButton(
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                              backgroundColor:
                                                                  AppColor
                                                                      .pink),
                                                      onPressed: () async {
                                                        File? file = await DCore
                                                            .pickImages(
                                                                ImageSource
                                                                    .gallery,
                                                                context);
                                                        Navigator.pop(context);
                                                        setState(() {
                                                          userImage = file;
                                                        });
                                                      },
                                                      child: const Text(
                                                        "Gallary",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      )),
                                                ),
                                                SizedBox(
                                                  width: double.infinity,
                                                  child: ElevatedButton(
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                              backgroundColor:
                                                                  AppColor
                                                                      .pink),
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: const Text(
                                                        "Cancel",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      )),
                                                )
                                              ],
                                            ));
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(5),
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white),
                                    child: const Icon(
                                      Icons.edit,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              )
                            ])
                          ],
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
                            hintText: "Password",
                            controller: passwordEditingController),
                        const SizedBox(
                          height: 15,
                        ),
                        AuthTextField(
                            hintText: "Confirm Password",
                            controller: comfirmPasswordEditingController),
                        const SizedBox(
                          height: 16,
                        ),
                        DropdownButtonFormField(
                            decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(),
                            ),
                            value: userType,
                            items: [
                              const DropdownMenuItem(
                                child: Text("User"),
                                value: 'user',
                              ),
                              const DropdownMenuItem(
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
                                      controller:
                                          accountNumberEditingController),
                                  AuthTextField(
                                      hintText: "Bank Name",
                                      controller: bankEditingController),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                ],
                              )
                            : Container(),
                        const SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () async {
                            if (userImage == null) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content:
                                          Text('Profile Image is required')));
                              return;
                            }
                            if (emailEditingController.text.isEmpty ||
                                passwordEditingController.text.isEmpty ||
                                comfirmPasswordEditingController.text.isEmpty) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('All feild are required')));
                            } else if (isSeller) {
                              if (storeEditingController.text.isEmpty ||
                                  firstNameEditingController.text.isEmpty ||
                                  lastNameEditingController.text.isEmpty) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text(
                                            'All  seller feild are  required')));
                              }
                            } else {
                              setState(() {
                                isLoading = true;
                              });
                              var user = await AuthService.createUser(
                                  email: emailEditingController.text,
                                  password: passwordEditingController.text,
                                  isSeller: isSeller,
                                  firstName: firstNameEditingController.text,
                                  lastName: lastNameEditingController.text,
                                  accountNumber:
                                      accountNumberEditingController.text,
                                  bankName: bankEditingController.text,
                                  image: userImage,
                                  storeName: storeEditingController.text,
                                  context: context);

                              setState(() {
                                isLoading = false;
                              });
                              if (user != null) {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (_) {
                                  return const Home();
                                }));
                              }
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

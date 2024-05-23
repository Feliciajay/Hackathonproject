import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hackathon/apis/auth.dart';
import 'package:hackathon/constant/app_color.dart';
import 'package:hackathon/constant/app_image.dart';
import 'package:hackathon/home/home_nav.dart';
import 'package:hackathon/home/homepage.dart';
import 'package:hackathon/home/widget/checkout.dart';
import 'package:hackathon/signin/signin.dart';
import 'package:hackathon/signin/widget/auth_text_field.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController emailEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFDFDFD),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Icon(Icons.arrow_back_ios),
                    Padding(
                      padding: EdgeInsets.only(left: 110),
                      child: Text(
                        'Checkout',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColor.pink),
                        onPressed: () async {
                          await AuthService.logout();
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (_) {
                            return const SignInPage();
                          }));
                        },
                        child: Text('LogOut'))
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 80,
                width: 80,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      AppImages.avatarImage,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 200),
                child: Text(
                  'Personal Details',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 290),
                child: Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              AuthTextField(
                hintText: "Username Or Email",
                controller: emailEditingController,
              ),
              const SizedBox(
                height: 31,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 250),
                child: Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              AuthTextField(
                  hintText: "Password", controller: passwordEditingController),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 200),
                child: Text(
                  'Change Password',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColor.red),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 130),
                child: Text(
                  'Business Address Details',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColor.black),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 280),
                child: Text(
                  'Pincode',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColor.black),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 48,
                width: 327,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: AppColor.black),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: TextField(
                    decoration: InputDecoration(hintText: ('450116')),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 280),
                child: Text(
                  'Address',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColor.black),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 48,
                width: 327,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: AppColor.black),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: TextField(
                    decoration: InputDecoration(hintText: ('450116')),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 280),
                child: Text(
                  'City',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColor.black),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 48,
                width: 327,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: AppColor.black),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: TextField(
                    decoration: InputDecoration(hintText: ('450116')),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 280),
                child: Text(
                  'Country',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColor.black),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 48,
                width: 327,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: AppColor.black),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: TextField(
                    decoration: InputDecoration(hintText: ('450116')),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 170),
                child: Text(
                  'Bank Account Details',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColor.black),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 200),
                child: Text(
                  'Bank Account Number',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColor.black),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 48,
                width: 327,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: AppColor.black),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: TextField(
                    decoration: InputDecoration(hintText: ('450116')),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 190),
                child: Text(
                  'Account Holder\'s Name',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColor.black),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 48,
                width: 327,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: AppColor.black),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: TextField(
                    decoration: InputDecoration(hintText: ('450116')),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: 317,
                height: 55,
                decoration: BoxDecoration(
                  color: const Color(0XFFF83758),
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return const HomeScreen();
                    }));
                  },
                  child: const Text(
                    'Save',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hackathon/constant/app_image.dart';
import 'package:hackathon/onboarding/pageview/page1.dart';
import 'package:hackathon/onboarding/pageview/page3.dart';
import 'package:hackathon/signin/widget/social_botton.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 17, top: 10),
                    child: Text(
                      '2',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      '/3',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    width: 275,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 17, top: 10),
                    child: Text(
                      'Skip',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
              const SingleChildScrollView(
                child: Center(
                  child: Padding(
                      padding: EdgeInsets.only(top: 150, left: 37, right: 37),
                      child: SocialBotton(imagePath: AppImages.pagetwoImage)),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  const Text(
                    'Choose Products',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Color(0xff000000)),
                  ),
                  const Text(
                    'Amet minim mollit non deserunt ullamco est \n  sit aliqua dolor do amet sint. Velit officia \n consequat duis enim velit mollit.',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffA8A8A9)),
                  ),
                  const SizedBox(
                    height: 120,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) {
                              return const Page1();
                            }),
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(left: 21),
                          child: Text(
                            'Prev',
                            selectionColor: Colors.green,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffF83758)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 78,
                      ),
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return const Page3();
                          }));
                        },
                        child: Container(
                          width: 40,
                          height: 8,
                          decoration: BoxDecoration(
                            color: const Color(0xff17223B),
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      const SizedBox(
                        width: 74,
                      ),
                      const Text(
                        'Next',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffF83758)),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

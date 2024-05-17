import 'package:flutter/material.dart';
import 'package:hackathon/onboarding/provider/onboard_provider.dart';

import 'package:hackathon/signin/signin.dart';

import 'package:page_view_sliding_indicator/page_view_sliding_indicator.dart';
import 'package:provider/provider.dart';

class Page1 extends StatefulWidget {
  final String title;
  final String subTitle;
  final String imagePath;
  final int currentPage;
  const Page1(
      {super.key,
      required this.currentPage,
      required this.title,
      required this.subTitle,
      required this.imagePath});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 17, top: 10),
                      child: Text(
                        '${widget.currentPage + 1}',
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        '/3',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                const Padding(
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
            Center(
              child: Container(
                height: 400,
                child: Image.asset(
                  widget.imagePath,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(children: [
                Text(
                  widget.title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Color(0xff000000)),
                ),
                Text(
                  widget.subTitle,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffA8A8A9)),
                ),
              ]),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                widget.currentPage > 0
                    ? GestureDetector(
                        onTap: () {
                          Provider.of<OnboardingProvider>(context,
                                  listen: false)
                              .prevOnPressed();
                        },
                        child: const Text(
                          'Prev',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffF83758)),
                        ),
                      )
                    : Container(),
                PageViewSlidingIndicator(
                  color: Colors.pink,
                  controller:
                      Provider.of<OnboardingProvider>(context).controller,
                  pageCount: 3,
                ),
                GestureDetector(
                  onTap: () {
                    if (widget.currentPage == 2) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) {
                          return const SignInPage();
                        }),
                      );
                    } else {
                      Provider.of<OnboardingProvider>(context, listen: false)
                          .nextOnPressed();
                    }
                  },
                  child: const Text(
                    'Next',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffF83758)),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            )
          ]),
        )));
  }
}

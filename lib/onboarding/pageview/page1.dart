import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hackathon/constant/app_image.dart';
import 'package:hackathon/signin/widget/social_botton.dart';
import 'package:page_view_sliding_indicator/page_view_sliding_indicator.dart';

class Page1 extends StatefulWidget {
  final PageController pageController;
  final String title;
  final String subTitle;
  final String imagePath;
  final int currentPage;
  const Page1(
      {super.key,
      required this.currentPage,
      required this.pageController,
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
                      padding: EdgeInsets.only(left: 17, top: 10),
                      child: Text(
                        '${widget.currentPage + 1}',
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
                  ],
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
            SingleChildScrollView(
              child: Center(
                child: Image.asset(
                  widget.imagePath,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Column(children: [
              Text(
                widget.title,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Color(0xff000000)),
              ),
              Text(
                widget.subTitle,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffA8A8A9)),
              ),
              const SizedBox(
                height: 120,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  widget.currentPage > 0
                      ? GestureDetector(
                          onTap: () {
                            widget.pageController.previousPage(
                                duration: Duration(milliseconds: 200),
                                curve: Curves.fastOutSlowIn);
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
                    controller: widget.pageController,
                    pageCount: 3,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (widget.currentPage == 2) {
                        // Navigator.push(context, route)
                      } else {
                        widget.pageController.nextPage(
                            duration: Duration(milliseconds: 200),
                            curve: Curves.linear);
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
            ]),
          ]),
        )));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hackathon/home/widget/banner_widget.dart';
import 'package:hackathon/home/widget/shop_container.dart';
import 'package:page_view_sliding_indicator/page_view_sliding_indicator.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  final scrollController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFDFDFD),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 56,
                width: 375,
                decoration: const BoxDecoration(),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                    ),
                    Icon(
                      Icons.shopping_cart,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            BannerWidget(scrollController: scrollController),
            const SizedBox(
              height: 10,
            ),
            PageViewSlidingIndicator(
              color: Colors.pink,
              controller: scrollController,
              pageCount: 4,
            ),
            const SizedBox(
              height: 16,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 260),
              child: Text(
                'Size: 7UK',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0XFF000000)),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 35),
              child: ShopContainer(),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'NIke Sneakers',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    'Vision Alta Men’s Shoes Size (All Colours)',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Text(
                    '56,890',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff828282)),
                  ),
                  const Row(
                    children: [
                      Text(
                        '₹2,999',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff808488),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '₹1,500',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff000000),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '50% Off',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffFA7189),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Product Details',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff000000),
                    ),
                  ),
                  const Text(
                    'Perhaps the most iconic sneaker of all-time, this original\n"Chicago"? colorway is the cornerstone to any sneaker \ncollection. Made famous in 1985 by Michael Jordan, the \nshoe has stood the test of time, becoming the most \nfamous colorway of the Air Jordan 1. This 2015 release saw \nthe ...More',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 24,
                    width: 97,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: const Color(0XFFffffff),
                        border: Border.all(
                            width: 1, color: const Color(0xff828282))),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 15,
                          color: Color(0xff828282),
                        ),
                        Text(
                          'Nearest Store',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff828282)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

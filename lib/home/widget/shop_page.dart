import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:hackathon/home/widget/banner_widget.dart';
import 'package:hackathon/home/widget/product_home.dart';
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
        child: SingleChildScrollView(
          child: Column(children: [
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
                  Row(
                    children: [
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
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 24,
                        width: 46,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            width: 1,
                            color: const Color(0xff828282),
                          ),
                        ),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.lock,
                              size: 15,
                              color: Color(0xff828282),
                            ),
                            Text(
                              ' Vip',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff828282)),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
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
                              Icons.replay_circle_filled_rounded,
                              size: 15,
                              color: Color(0xff828282),
                            ),
                            Text(
                              'Return Policy',
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
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(
                                0xff3F92FF,
                              ),
                            ),
                            child: const Icon(
                              Icons.shopping_cart,
                              size: 18,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35, top: 2),
                            child: Container(
                              height: 39,
                              width: 125,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(
                                  0xff3F92FF,
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 20, top: 6),
                                child: Text(
                                  'Go To Cart',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xffffffff)),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(
                                0xff31B769,
                              ),
                            ),
                            child: const Icon(
                              Icons.ads_click,
                              size: 18,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35, top: 2),
                            child: Container(
                              height: 39,
                              width: 125,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(
                                  0xff31B769,
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 20, top: 6),
                                child: Text(
                                  'Buy Now',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xffffffff)),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 350,
                    height: 60,
                    decoration: BoxDecoration(
                        color: const Color(0xffFFCCD5),
                        borderRadius: BorderRadius.circular(5)),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 27),
                      child: Text(
                        ' Delivery in\n Within 1 Hour',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff010101)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                          width: 175,
                          height: 48,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Icon(Icons.remove_red_eye),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'View Similar',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            ],
                          )),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 175,
                        height: 48,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                            ),
                            Icon(Icons.phone_android),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Add to Compare',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 40),
                        child: Text(
                          'Similar To\n282+ Iteams ',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0XFF000000),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 46,
                      ),
                      Container(
                        height: 24,
                        width: 61,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            width: 1,
                            color: Colors.lightBlue,
                          ),
                          color: const Color(0xffFFFFFF),
                        ),
                        child: const Row(
                          children: [
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Sort',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff000000),
                              ),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Icon(
                              Icons.swap_vert,
                              color: Color(0XFF232327),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Container(
                        height: 24,
                        width: 67,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            width: 1,
                            color: Colors.lightBlue,
                          ),
                          color: const Color(0xffFFFFFF),
                        ),
                        child: const Row(
                          children: [
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              'Filter',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff000000),
                              ),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Icon(
                              Icons.swap_vert,
                              color: Color(0XFF232327),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ProductsHome(),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

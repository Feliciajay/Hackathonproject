import 'package:flutter/material.dart';

import 'package:hackathon/constant/app_image.dart';
import 'package:hackathon/home/widget/banner_widget.dart';
import 'package:hackathon/home/widget/product_home.dart';
import 'package:hackathon/home/widget/profile.dart';
import 'package:hackathon/home/widget/rowavatar.dart';
import 'package:hackathon/home/widget/shop_page.dart';
import 'package:hackathon/home/widget/trending_product.dart';

import 'package:page_view_sliding_indicator/page_view_sliding_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final scrollController = PageController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xffFDFDFD),
          appBar: AppBar(
            iconTheme: const IconThemeData(size: 20),
            elevation: 0.0,
            backgroundColor: Colors.white,
            actions: <Widget>[
              Container(
                height: 120,
                width: 120,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      AppImages.frontpageImage,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 90,
              ),
              Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      AppImages.avatarImage,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          drawerEnableOpenDragGesture: true,
          drawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Colors.green,
                  ),
                  child: CircleAvatar(
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            AppImages.frontpageImage,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return const Profile();
                    }));
                  },
                  title: Text(
                    'Home',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return const ShopPage();
                    }));
                  },
                  title: const Text(
                    'Shop',
                    style: TextStyle(color: Colors.purple),
                  ),
                ),
                const ListTile(
                  title: Text(
                    'Payment',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                const ListTile(
                  title: Text(
                    'Terms and Conditions',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
                const ListTile(
                  title: Text(
                    'Company',
                    style: TextStyle(color: Colors.pink),
                  ),
                ),
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 16, left: 20, top: 20),
                  child: Container(
                    height: 40,
                    width: 343,
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
                          width: 16,
                        ),
                        Icon(
                          Icons.search,
                          color: Color(0XFFBBBBBB),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Search Any Product...',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffBBBBBB),
                          ),
                        ),
                        SizedBox(
                          width: 119,
                        ),
                        Icon(
                          Icons.mic,
                          color: Color(0XFFBBBBBB),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 17,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    const Text(
                      'All Featured',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0XFF000000),
                      ),
                    ),
                    const SizedBox(
                      width: 79,
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
                const SizedBox(
                  height: 16,
                ),
                const RowAvatar(),
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
                  pageCount: 3,
                ),
                const SizedBox(
                  height: 16,
                ),
                Column(
                  children: [
                    Container(
                      width: 343,
                      height: 75,
                      decoration: BoxDecoration(
                        color: const Color(0xff4392F9),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 10, left: 10),
                            child: Text(
                              ' Deal of the Day',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 230, top: 18),
                            height: 29,
                            width: 89,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: const Color(0xffffffff),
                              ),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: const Row(
                              children: [
                                Text(
                                  '  View all',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Color(0xffffffff),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 40, left: 10),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.timer,
                                  color: Color(0xffffffff),
                                ),
                                Text(
                                  '22h 55m 20s remaining ',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: ProductsHome(),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      width: 343,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        image: const DecorationImage(
                            image: AssetImage(
                              'assets/images/over.png',
                            ),
                            alignment: Alignment.centerLeft),
                      ),
                      child: const Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 55, top: 12),
                            child: Text(
                              'Special Offers 😱',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 110, top: 8),
                            child: Text(
                              'We make sure you get the\n offer you need at best prices',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 343,
                      height: 172,
                      child: Image.asset(AppImages.bataImage),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      width: 343,
                      height: 75,
                      decoration: BoxDecoration(
                        color: const Color(0xffFD6E87),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 10, left: 10),
                            child: Text(
                              ' Trending Products ',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 230, top: 18),
                            height: 29,
                            width: 89,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: const Color(0xffffffff),
                              ),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) {
                                  return const TrendingProducts();
                                }));
                              },
                              child: const Row(
                                children: [
                                  Text(
                                    '  View all',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Color(0xffffffff),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 40, left: 10),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.calendar_month,
                                  color: Color(0xffffffff),
                                ),
                                Text(
                                  'Last Date 29/02/22 ',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const Padding(
                    padding: EdgeInsets.only(left: 30), child: ProductsHome()),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 343,
                  height: 204,
                  child: Image.asset(AppImages.summerImage),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  width: 343,
                  height: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 10, left: 10),
                        child: Text(
                          ' New Arrivals ',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 230, top: 18),
                        height: 29,
                        width: 89,
                        decoration: BoxDecoration(
                          color: const Color(0xffF83758),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Row(
                          children: [
                            Text(
                              '  View all',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffffffff),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Color(0xffffffff),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 40, left: 15),
                        child: Text(
                          'Summer’ 25 Collections ',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 220),
                  child: Text(
                    'Sponsored',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 292,
                  width: 351,
                  child: Image.asset(AppImages.brownImage),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 230),
                  child: Text(
                    'up to 50% Off',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

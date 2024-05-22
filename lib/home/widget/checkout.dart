import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hackathon/constant/app_color.dart';
import 'package:hackathon/constant/app_image.dart';
import 'package:hackathon/home/widget/place_order.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({super.key});

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return const PlaceOrder();
        }));
      },
      child: Scaffold(
        backgroundColor: const Color(0xffFDFDFD),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
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
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Icon(Icons.location_on),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Delivery Address',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 22,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Address:',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Icon(Icons.library_add),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '216 St Paul\'s Rd, London N1 2LL, UK\nContact :+44-784232',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Icon(
                        Icons.add_box,
                        size: 50,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 230),
                  child: Text(
                    'Shopping List',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      height: 130,
                      width: 210,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppImages.ladiesImage),
                        ),
                      ),
                    ),
                    Container(
                      height: 140,
                      width: 180,
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Text(
                              'Women’s Casual Wear',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                const Text(
                                  'Variations : ',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Container(
                                  height: 20,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    border: Border.all(
                                      width: 1,
                                      color: AppColor.black,
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.only(
                                      left: 5,
                                    ),
                                    child: Text(
                                      'Black',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: AppColor.black),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 20,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    border: Border.all(
                                      width: 1,
                                      color: AppColor.black,
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.only(
                                      left: 5,
                                    ),
                                    child: Text(
                                      'Red',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: AppColor.black),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 120),
                            child: Text(
                              '₹2499',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Row(
                            children: [
                              Text(
                                '    ₹4499',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xffbbbbbb),
                                ),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                '50%Off',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffFE735C),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Row(
                            children: [
                              Text(
                                '   ✯✯✯✯✯',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.yellow,
                                ),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                '344567',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffA4A9B3),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 2,
                  width: 350,
                  color: AppColor.grey,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Total Order (1)   :'),
                    SizedBox(
                      width: 50,
                    ),
                    Text('\$ 34.00')
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Container(
                      height: 130,
                      width: 210,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppImages.g18Image),
                        ),
                      ),
                    ),
                    Container(
                      height: 140,
                      width: 180,
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Text(
                              'Men’s Jacket',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                const Text(
                                  'Variations : ',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Container(
                                  height: 20,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    border: Border.all(
                                      width: 1,
                                      color: AppColor.black,
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.only(
                                      left: 5,
                                    ),
                                    child: Text(
                                      'Green',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                          color: AppColor.black),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 20,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    border: Border.all(
                                      width: 1,
                                      color: AppColor.black,
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.only(
                                      left: 5,
                                    ),
                                    child: Text(
                                      'Grey',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: AppColor.black),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 120),
                            child: Text(
                              '₹2499',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Row(
                            children: [
                              Text(
                                '    ₹4499',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xffbbbbbb),
                                ),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                '50%Off',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffFE735C),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Row(
                            children: [
                              Text(
                                '   ✯✯✯✯✯',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.yellow,
                                ),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                '344567',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffA4A9B3),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 2,
                  width: 350,
                  color: AppColor.grey,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Total Order (1)   :'),
                    SizedBox(
                      width: 50,
                    ),
                    Text('\$ 45.00')
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

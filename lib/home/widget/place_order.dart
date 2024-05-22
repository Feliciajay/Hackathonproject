import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hackathon/constant/app_color.dart';
import 'package:hackathon/constant/app_image.dart';
import 'package:hackathon/home/widget/shipping.dart';

class PlaceOrder extends StatefulWidget {
  const PlaceOrder({super.key});

  @override
  State<PlaceOrder> createState() => _PlaceOrderState();
}

class _PlaceOrderState extends State<PlaceOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    SizedBox(
                      width: 120,
                    ),
                    Icon(
                      Icons.favorite,
                    )
                  ],
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
                  Text('🎟️Apply Coupons'),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    'Select',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 160),
                child: Text(
                  'Order Payment Details',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Order Amounts'),
                  SizedBox(
                    width: 100,
                  ),
                  Text('\$7,000.00')
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Convenience'),
                  SizedBox(
                    width: 100,
                  ),
                  Text('Apply Coupon')
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Delivery Fee'),
                  SizedBox(
                    width: 155,
                  ),
                  Text('Free')
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
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Order Amounts'),
                  SizedBox(
                    width: 100,
                  ),
                  Text('\$7,000.00')
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 30, left: 35),
                    child: Text('EMI Available'),
                  ),
                  Text(
                    'Details',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.red,
                    ),
                  )
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
                height: 25,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) {
                      return const Shipping();
                    }),
                  );
                },
                child: Container(
                  width: 219,
                  height: 48,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red),
                  child: const Center(
                    child: Text(
                      'Proceed to Payment',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
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

import 'package:flutter/material.dart';
import 'package:hackathon/constant/app_color.dart';
import 'package:hackathon/home/widget/successful.dart';

class Shipping extends StatefulWidget {
  const Shipping({super.key});

  @override
  State<Shipping> createState() => _ShippingState();
}

class _ShippingState extends State<Shipping> {
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
                  ],
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(' Order'),
                  SizedBox(
                    width: 100,
                  ),
                  Text('   \$7,000.00')
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('  Shipping'),
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
                  Text(' Total'),
                  SizedBox(
                    width: 100,
                  ),
                  Text('     \$7,000.00')
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
              const Padding(
                padding: EdgeInsets.only(right: 230),
                child: Text(
                  'Payment',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
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
                height: 30,
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
                height: 30,
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
                height: 30,
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
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) {
                      return const Successfull();
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
                      'Continue',
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

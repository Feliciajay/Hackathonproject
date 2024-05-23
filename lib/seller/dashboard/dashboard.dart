import 'package:flutter/material.dart';
import 'package:hackathon/constant/app_color.dart';

class SellerDashBoard extends StatelessWidget {
  const SellerDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                color: AppColor.green,
              ),
              child: const Column(
                children: [
                  Text(
                    "Total Product",
                  )
                ],
              ))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hackathon/home/homepage.dart';
import 'package:hackathon/home/widget/checkout.dart';
import 'package:hackathon/home/widget/shop_page.dart';
import 'package:hackathon/home/widget/trending_product.dart';

import '../widget/profile.dart';

class NavbarProvider extends ChangeNotifier {
  int currentIndex = 0;

  List listOfScreen = [
    const HomeScreen(),
    const TrendingProducts(),
    CheckOut(),
    const ShopPage(),
    Profile(),
  ];

  void onChange(int index) {
    currentIndex = index;
    notifyListeners();
  }
}

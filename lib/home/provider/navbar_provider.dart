import 'package:flutter/material.dart';
import 'package:hackathon/home/homepage.dart';
import 'package:hackathon/home/widget/shop_page.dart';
import 'package:hackathon/home/widget/trending_product.dart';

class NavbarProvider extends ChangeNotifier {
  int currentIndex = 0;

  List listOfScreen = [
    const HomeScreen(),
    const TrendingProducts(),
    const ShopPage(),
    const Center(
      child: Text("Search"),
    ),
    const Center(
      child: Text("Profile"),
    ),
  ];

  void onChange(int index) {
    currentIndex = index;
    notifyListeners();
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider/navbar_provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NavbarProvider>(builder: (context, navProvider, _) {
      return Scaffold(
        body: navProvider.listOfScreen[navProvider.currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.red,
            onTap: (index) {
              navProvider.onChange(index);
            },
            currentIndex: navProvider.currentIndex,
            items: const [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(
                  Icons.home,
                  size: 28,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Wishlist',
                icon: Icon(
                  Icons.favorite,
                  size: 28,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Cart',
                icon: Icon(
                  Icons.shopping_cart,
                  size: 28,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Search',
                icon: Icon(
                  Icons.search,
                  size: 28,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Settings',
                icon: Icon(
                  Icons.settings,
                  size: 28,
                ),
              ),
            ]),
      );
    });
  }
}

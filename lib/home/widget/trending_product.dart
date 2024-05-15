import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:hackathon/constant/app_image.dart";

class TrendingProducts extends StatefulWidget {
  const TrendingProducts({super.key});

  @override
  State<TrendingProducts> createState() => _TrendingProductsState();
}

class _TrendingProductsState extends State<TrendingProducts> {
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFDFDFD),
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
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.red,
          onTap: (index) {
            setState(() {
              myIndex = index;
            });
          },
          currentIndex: myIndex,
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
            const ListTile(
              title: Text(
                'Home',
                style: TextStyle(color: Colors.blue),
              ),
            ),
            const ListTile(
              title: Text(
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
                  '52,082+ Iteams ',
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
            GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Container(
                    height: 341,
                    width: 170,
                    decoration: BoxDecoration(color: Colors.red),
                  );
                })
          ],
        ),
      ),
    );
  }
}

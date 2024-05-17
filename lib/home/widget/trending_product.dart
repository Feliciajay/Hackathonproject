import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart";
import "package:hackathon/constant/app_image.dart";
import "package:hackathon/home/provider/product_provider.dart";
import "package:hackathon/models/product_models.dart";

class TrendingProducts extends StatefulWidget {
  const TrendingProducts({super.key});

  @override
  State<TrendingProducts> createState() => _TrendingProductsState();
}

class _TrendingProductsState extends State<TrendingProducts> {
  final controller = ScrollController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Column(children: [
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
            height: 10,
          ),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: 500,
              child: MasonryGridView.count(
                itemCount: ProductProvider.listOfproduct.length,
                crossAxisCount: 2,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                itemBuilder: (context, index) {
                  ProductModel productModel =
                      ProductProvider.listOfproduct[index];
                  return Card(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(productModel.imagePath),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  productModel.title,
                                  style: const TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  productModel.discription,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Text("\$ ${productModel.price}"),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ))
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ProductsHome extends StatelessWidget {
  const ProductsHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              height: 245,
              width: 170,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/ladies.png',
                    ),
                    alignment: Alignment.topCenter),
              ),
              child: const Padding(
                padding: EdgeInsets.only(
                  top: 130,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 40),
                      child: Text(
                        'Women Printed Kurta',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 14),
                      child: Text(
                        'Neque porro quis quam est qui\ndolorem ipsum quia',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 120),
                      child: Text(
                        '₹1500',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Text(
                          '  ₹2499',
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
                          '40%Off',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffFE735C),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Text(
                          '  ✯✯✯✯✯',
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
                          '56890',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffA4A9B3),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 245,
          width: 170,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/shoe.png',
                ),
                alignment: Alignment.topCenter),
          ),
          child: const Padding(
            padding: EdgeInsets.only(
              top: 130,
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 40),
                  child: Text(
                    'HRX by Hrithik Roshan',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 14),
                  child: Text(
                    'Neque porro quis quam est qui\ndolorem ipsum quia',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Padding(
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
                SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Text(
                      '  ₹4499',
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
                SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Text(
                      '  ✯✯✯✯✯',
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
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

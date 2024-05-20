import "package:flutter/material.dart";
import "package:hackathon/constant/app_image.dart";

class RowAvatar extends StatelessWidget {
  const RowAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Container(
              padding: const EdgeInsets.only(left: 2),
              height: 100,
              width: 439,
              decoration: BoxDecoration(
                color: const Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1, color: Colors.blue),
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 12),
                        child: Image.asset(
                          AppImages.beautyImage,
                          width: 60,
                          height: 60,
                        ),
                      ),
                      const Text('     Beauty')
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Image.asset(
                            AppImages.fashionImage,
                            width: 60,
                            height: 60,
                          ),
                        ),
                        const Text('Fashion')
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 13),
                        child: Image.asset(
                          AppImages.kidsImage,
                          width: 60,
                          height: 60,
                        ),
                      ),
                      const Text(' Kids')
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Image.asset(
                          AppImages.mensImage,
                          width: 60,
                          height: 60,
                        ),
                      ),
                      const Text('Mens')
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Image.asset(
                          AppImages.womensImage,
                          width: 60,
                          height: 60,
                        ),
                      ),
                      const Text('Womens')
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

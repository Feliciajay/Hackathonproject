import 'package:flutter/material.dart';
import 'package:hackathon/constant/app_image.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    super.key,
    required this.scrollController,
  });

  final PageController scrollController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: Expanded(
        child: PageView.builder(
            controller: scrollController,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(right: 10),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage(
                      AppImages.pageviewImage,
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}

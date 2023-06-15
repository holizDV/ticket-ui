import 'package:flutter/material.dart';

import '../../../core/manager/color_manager.dart';
import '../../../core/manager/font_manager.dart';
import '../../../core/manager/values_manager.dart';
import '../../../generate/gen/assets.gen.dart';

class MenuRestaurant extends StatelessWidget {
  MenuRestaurant({super.key});

  final List<String> images = [
    Assets.images.frame1.path,
    Assets.images.frame2.path,
    Assets.images.frame3.path,
    Assets.images.frame3.path,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p26),
          child: Text(
            "Restoran",
            style: Typograph.label12sm.copyWith(color: Colors.black),
          ),
        ),
        const SizedBox(height: AppSize.s10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(images.length, (index) {
              return Padding(
                padding: EdgeInsets.only(
                  left: (index == 0) ? AppPadding.p26 : 0,
                  right: AppPadding.p16,
                ),
                child: _RestaurantCard(
                  text: "Bali",
                  image: images[index],
                  onTap: () {},
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}

class _RestaurantCard extends StatelessWidget {
  const _RestaurantCard({
    required this.text,
    required this.image,
    required this.onTap,
  });

  final String text;
  final String image;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 115,
        height: 125,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.s6),
          border: Border.all(color: Colors.black38, width: 0.5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              image,
              height: 90,
              fit: BoxFit.fill,
            ),
            const SizedBox(height: AppSize.s10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.p8),
              child: Text(
                text,
                style: Typograph.label10sm.copyWith(color: AppColors.blue),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

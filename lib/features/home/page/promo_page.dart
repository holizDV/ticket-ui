import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ticketui/core/manager/color_manager.dart';
import 'package:ticketui/core/manager/font_manager.dart';
import 'package:ticketui/core/manager/values_manager.dart';
import 'package:ticketui/core/routes/routes.dart';

import '../../../generate/gen/assets.gen.dart';

class PromoPage extends StatelessWidget {
  PromoPage({super.key});

  final List<String> images = [
    Assets.images.frame1.path,
    Assets.images.frame2.path,
    Assets.images.frame3.path,
    Assets.images.frame3.path,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.blue.withOpacity(0.5),
      padding: const EdgeInsets.symmetric(vertical: AppPadding.p12),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p26),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Tiket dan Promo",
                  style: Typograph.label14sm.copyWith(color: Colors.white),
                ),
                InkWell(
                  onTap: () => context.push(AppRoute.ticketPath),
                  child: Text(
                    "Lihat Semua",
                    style: Typograph.label10sm.copyWith(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
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
                    right: AppPadding.p8,
                  ),
                  child: Image.asset(
                    images[index],
                    fit: BoxFit.fill,
                    width: 200,
                    height: 120,
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/manager/color_manager.dart';
import '../../../core/manager/font_manager.dart';
import '../../../generate/gen/assets.gen.dart';
import 'menu_facility.dart';
import 'menu_recreation.dart';
import 'menu_restaurant.dart';

class MenuSection extends StatelessWidget {
  MenuSection({super.key});

  final List<Tab> myTabs = [
    Tab(
      icon: SvgPicture.asset(Assets.images.iconSixCircularConnection.path),
      text: "Rekreasi",
    ),
    Tab(
      icon: SvgPicture.asset(Assets.images.iconShop.path),
      text: "Fasilitas",
    ),
    Tab(
      icon: SvgPicture.asset(Assets.images.iconForkSpoon.path),
      text: "Restoran",
    ),
    Tab(
      icon: SvgPicture.asset(Assets.images.iconCity.path),
      text: "Hotel",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Column(
        children: [
          TabBar(
            tabs: myTabs,
            labelStyle: Typograph.label10sm,
            labelColor: AppColors.blue,
            unselectedLabelColor: AppColors.text,
            indicatorColor: AppColors.blue,
            indicatorSize: TabBarIndicatorSize.label,
          ),
          const Divider(color: Colors.black26),
          SizedBox(
            height: 230,
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              children: [
                MenuRecreation(),
                MenuFacility(),
                MenuRestaurant(),
                const Text("Development"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

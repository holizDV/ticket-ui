import 'package:flutter/material.dart';

import '../../../core/manager/color_manager.dart';
import '../../../core/manager/font_manager.dart';
import '../../../core/manager/values_manager.dart';
import '../../../generate/gen/assets.gen.dart';
import 'balance_section.dart';
import 'menu_section.dart';
import 'promo_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(top: AppPadding.p24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const _AppNameCard(),
              const SizedBox(height: AppSize.s38),
              const BalanceSection(),
              const SizedBox(height: AppSize.s26),
              MenuSection(),
              PromoPage(),
            ],
          ),
        ),
      ),
    );
  }
}

class _AppNameCard extends StatelessWidget {
  const _AppNameCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: AppMargin.m26),
      padding: const EdgeInsets.all(AppPadding.p8),
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppSize.s4),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Assets.images.logo.image(
            width: 50,
            fit: BoxFit.cover,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "company name".toUpperCase(),
                style: const TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w900,
                  fontSize: FontSize.s14,
                ),
              ),
              Text(
                "your slogan goes here".toUpperCase(),
                style: Typograph.label10m.copyWith(color: AppColors.blue),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

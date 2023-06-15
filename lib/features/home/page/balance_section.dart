import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/manager/color_manager.dart';
import '../../../core/manager/font_manager.dart';
import '../../../core/manager/values_manager.dart';
import '../../../generate/gen/assets.gen.dart';

class BalanceSection extends StatelessWidget {
  const BalanceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: AppMargin.m26),
      padding: const EdgeInsets.all(AppPadding.p12),
      decoration: BoxDecoration(
        color: AppColors.blue.withOpacity(0.4),
        borderRadius: BorderRadius.circular(AppSize.s10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Container(
              padding: const EdgeInsets.symmetric(
                  vertical: AppPadding.p10, horizontal: AppPadding.p18),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(AppSize.s14),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        Assets.images.iconWallet.path,
                      ),
                      const SizedBox(width: AppSize.s10),
                      Text(
                        "Saldo",
                        style:
                            Typograph.label10sm.copyWith(color: AppColors.red),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSize.s4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "*********",
                        style: Typograph.label10sm,
                      ),
                      SvgPicture.asset(Assets.images.iconEyeClose.path),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: AppSize.s20),
          Flexible(
            child: Container(
              padding: const EdgeInsets.symmetric(
                  vertical: AppPadding.p10, horizontal: AppPadding.p18),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(AppSize.s14),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        Assets.images.iconDashboard.path,
                      ),
                      const SizedBox(width: AppSize.s10),
                      Text(
                        "Status",
                        style: Typograph.label10sm,
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSize.s4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Nonaktive",
                        style:
                            Typograph.label10sm.copyWith(color: AppColors.red),
                      ),
                      Text(
                        "Aktivasi",
                        style:
                            Typograph.label10sm.copyWith(color: AppColors.red),
                      ),
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

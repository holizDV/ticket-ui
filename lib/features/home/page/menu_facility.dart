import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/manager/color_manager.dart';
import '../../../core/manager/font_manager.dart';
import '../../../core/manager/values_manager.dart';
import '../../../generate/gen/assets.gen.dart';

class MenuFacility extends StatelessWidget {
  MenuFacility({super.key});

  final List<String> stringsTxt = [
    "Hotel",
    "Tempat\nIbadah",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p26),
          child: Text(
            "Fasilitas",
            style: Typograph.label12sm.copyWith(color: Colors.black),
          ),
        ),
        const SizedBox(height: AppSize.s10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p26),
          child: Wrap(
            spacing: 47.0,
            runSpacing: 8.0,
            children: List.generate(stringsTxt.length, (index) {
              return _FacilityCard(
                text: stringsTxt[index],
                image: Assets.images.iconSixCircularConnection.path,
                onTap: () {},
              );
            }),
          ),
        ),
      ],
    );
  }
}

class _FacilityCard extends StatelessWidget {
  const _FacilityCard({
    required this.text,
    required this.image,
    required this.onTap,
  });

  final String text;
  final String image;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            width: 50,
            height: 50,
            padding: const EdgeInsets.all(AppPadding.p4),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(AppSize.s8),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: SvgPicture.asset(image),
          ),
        ),
        const SizedBox(height: AppSize.s10),
        Text(
          text,
          style: Typograph.label10m.copyWith(color: AppColors.blue),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

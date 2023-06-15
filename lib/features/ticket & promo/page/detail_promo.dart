import 'package:flutter/material.dart';

import '../../../core/manager/font_manager.dart';
import '../../../core/manager/string_manager.dart';
import '../../../core/manager/values_manager.dart';

class DetailPromoPage extends StatelessWidget {
  const DetailPromoPage(
      {required this.title,
      required this.image,
      required this.date,
      super.key});
  final String title;
  final String date;
  final String image;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              image,
              height: size.width * 0.5,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: AppSize.s16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.p24),
              child: Text(
                title,
                style: Typograph.label10sm.copyWith(color: Colors.blue),
              ),
            ),
            const SizedBox(height: AppSize.s10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.p24),
              child: Text(
                date,
                style: Typograph.label12sm.copyWith(
                  color: Colors.blue,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: AppSize.s10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppMargin.m24),
              child: Text(
                AppStrings.descDetail,
                style:
                    Typograph.label12sm.copyWith(fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

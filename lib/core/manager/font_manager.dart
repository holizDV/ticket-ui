import 'package:flutter/material.dart';

import '../../generate/gen/fonts.gen.dart';
import 'color_manager.dart';

abstract class FontSize {
  static const double s8 = 8.0;
  static const double s10 = 10.0;
  static const double s12 = 12.0;
  static const double s14 = 14.0;
  static const double s16 = 16.0;
  static const double s18 = 18.0;
  static const double s20 = 20.0;
  static const double s24 = 24.0;
  static const double s28 = 28.0;
}

abstract class Typograph {
  static TextStyle label16sm = const TextStyle(
    color: AppColors.text,
    fontFamily: FontFamily.plusJakarta,
    fontSize: FontSize.s16,
    fontWeight: FontWeight.w600,
    height: 24.0 / FontSize.s16,
  );
  static TextStyle label14sm = const TextStyle(
    color: AppColors.text,
    fontFamily: FontFamily.plusJakarta,
    fontSize: FontSize.s14,
    fontWeight: FontWeight.w600,
    height: 21.0 / FontSize.s16,
  );

  static TextStyle label12sm = const TextStyle(
    color: AppColors.text,
    fontFamily: FontFamily.plusJakarta,
    fontSize: FontSize.s12,
    fontWeight: FontWeight.w600,
    height: 18.0 / FontSize.s12,
  );

  static TextStyle label10m = const TextStyle(
    color: AppColors.text,
    fontFamily: FontFamily.plusJakarta,
    fontSize: FontSize.s10,
    fontWeight: FontWeight.w400,
    height: 15.0 / FontSize.s14,
  );

  static TextStyle label10sm = const TextStyle(
    color: Colors.black,
    fontFamily: FontFamily.plusJakarta,
    fontSize: FontSize.s10,
    fontWeight: FontWeight.w600,
    height: 15.0 / FontSize.s14,
  );
}

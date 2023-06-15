import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/manager/color_manager.dart';
import '../../../core/routes/routes.dart';
import '../../../generate/gen/assets.gen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(milliseconds: 800), () {
      context.pushReplacement(AppRoute.rootPath);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height * 0.6,
        decoration: BoxDecoration(
          color: AppColors.blue.withOpacity(0.5),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.elliptical(size.width * 0.8, 350),
          ),
        ),
        alignment: Alignment.center,
        child: Assets.images.logo.image(
          width: 100,
        ),
      ),
    );
  }
}
